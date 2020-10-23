class EventParticipationsController < ApplicationController
before_action :authenticate_user!
before_action :exist_event_admin, only: [:update,:destroy]

  def create#参加
  	@event_participation = EventParticipation.new(event_participation_params)
    if @event_participation.save
      flash[:notice] = "イベントに参加しました"
      redirect_to user_path(current_user)
    else
      flash[:event_participation_error] = "このイベントには参加済みです"
      redirect_to event_path(@event_participation.event)
    end
  end

  def update#管理者の変更
    @event_participation = EventParticipation.find(params[:id])
    if @event_participation.update(event_participation_params)
      #flash[:notice] = "管理者を更新しました"
      redirect_to edit_event_path(@event_participation.event)
    else
      flash[:event_participation_error] = "予期しないエラーが発生しました。もう一度お試しください。
      動作に不具合がある場合は、開発者に連絡してください。"
      redirect_to event_path(@event_participation.event)
    end
  end


  def destroy#参加取りやめ
    event_participation = EventParticipation.find(params[:id])
    event_participation.destroy
    flash[:warning_notice] = "イベントの参加を取りやめました"
    redirect_to user_path(current_user)
  end

  private#----------------------------------------------------

  def event_participation_params
  	params.require(:event_participation).permit(:user_id, :event_id, :is_event_admin)
  end

  def exist_event_admin#イベント管理者は最低一人以上存在するようにする
    @event_participation = EventParticipation.find(params[:id])
    begin#updateの時の処理
      #現在の管理者が一人の時　権限を変更できない
      if EventParticipation.where(is_event_admin: true, event_id: params[:event_participation][:event_id]).count==1
        flash[:event_participation_error] = "管理者は1人以上必要です"
        redirect_to edit_event_path(@event_participation.event)
      end
    rescue#destroyの時の処理
      #現在の管理者が一人で　かつ　管理者が自分の時　取りやめできない
      if EventParticipation.where(is_event_admin: true, event_id: params[:event_id]).count==1 && current_user.is_event_admin(Event.find(params[:event_id]))
        flash[:event_participation_error] = "管理者は1人以上必要です"
        redirect_to event_path(@event_participation.event)
      end
    end
  end

end
