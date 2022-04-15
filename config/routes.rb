Rails.application.routes.draw do
  get 'lists/new'
  # For details on the DSL available within this file,see https://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  post 'lists' => 'lists#create'
  #理解メモ：URLを求められたとき＝＞〇コントローラの＃コマンドを実行。
  #上記だと、URL'lists'を求められたとき、listsコントローラのcreateコマンドを実行する。
  get 'lists' => 'lists#index'
  # .../list/1や.../list/3に該当する
  get 'lists/:id' => 'lists#show',as:'list'
end
