# nfs_share
1 установить  vagrant  и  virtualbox  на вм 
apt install vagrant 
apt install virtualbox  (если действие происчходит на виндовой машине включить вложенную виртуализацию) 
2 скачать dockerfile, скрипты перейти в папку с их местоположением
3 в  Dockerfile  закоменчена строка с версионнустью box  так, как у меня локальынй бокс, если есть проблемы с доступом на  хранилице вагрант (создание локального бокса)
  a скачать локальный бокс 
  b vagrant box add (название указанное в конфиге vm.box  варант файла) путь до образа вм  скачанный с варгант хранилища
если проблем с доступом нет, строчку можно раскоментить  #  config.vm.box_version = "2004.01" и пропустить 3 шаг 
4  сделать скрипты исполняемыми 
chmod +x nfsc_script.sh
chmod +x nfss_script.sh
5. vagrant up (важно скрипты с Vagrantfile  должны быть в одной директории)
