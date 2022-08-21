class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => running,
    enable => true,
  }
  ssh_authorized_key {'root@master.puppet.vm':
    ensure => present,
    user => 'root', 
    type => 'ssh-rsa', 
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCzW/6rtanWvli5zoK0dmb2gVWeE1HgBhi1jdDzptxWqXmTNRNrtHBwcN/8NObHFff4EjzsVKw3u+fClvHfkwjiFcVF+hTzNtqqTJwBWWh3oCj2QpDJGBKaLplp36/KCaiZZlrj4vDd4OOGJkhlI7/TGdEmieOGfQk2fYTKGgM8rmbya0T4oT5haZT21gAyRYhJB62xEE2Qfqxzg9r4qS5DfuLyTbO0Zot/XA1SxBSmoqv2/K0pdonufVvFFDZsjPiVCBzwh8tLnUxofPOCt1CzkcRuCY5x9DWhO8dcFFP1eR2KPm+kfR4h/Ym/qiaMQiyWB6mtIx2SfhkC0ySuXmx9',
  }
}
