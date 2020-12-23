class EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, only: [:destroy, :update]

  def index
    @active_event = Event.where('end_at >= ?', Date.today).order(:start_at)
    @past_event = Event.where('end_at < ?', Date.today).order(:start_at)
  end

  def new
    @event = Event.new
  end

  def create
    # Binding.pry
      @events = Event.all
      @event = Event.new(event_params)
      if @event.save
        flash[:notice] = "イベントを作成しました"
        event_prticipation = EventParticipation.new
        event_prticipation.user_id = current_user.id
        event_prticipation.event_id = @event.id
        event_prticipation.is_event_admin = true
        if event_prticipation.save
          redirect_to event_path(@event)
        else
          #ここの処理が実行されることはないはずだが、、、
          flash[:danger_notice] = 'イベント作成でエラーが発生しました。やり直してください。改善しない場合はアプリ開発者に連絡してください。'
          redirect_to user_path(current_user)
        end
      else
        render :new
      end
  end

  def show
    @event = Event.find(params[:id])
    @admin_participations = @event.event_participations.where(is_event_admin: true)
    @new_event_participation = EventParticipation.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
        flash[:notice] = "変更を保存しました"
        redirect_to event_path(@event)
    else
      render :new
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    redirect_to events_path

  end

  private
  def event_params
   params.require(:event).permit(:name, :description, :start_at, :end_at, :url1, :url1_description, :url2, :url2_description, :url3, :url3_description)
  end

  def correct_user#event管理者or代表のみ編集、削除可能
    event = Event.find(params[:id])
    if !(current_user.is_event_admin(event) or current_user.is_admin)
      flash[:danger_notice] = "イベントの編集,削除権限がありません"
      redirect_to user_path(current_user)
    end
  end
end
