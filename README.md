git, vim, zshをまともにしたcentos6.5(ansible版)

epel rpforge remi登録済み

nginx1.6(apache2.2), mysql5.5, php5.5入り

インストール
```sh
git clone https://github.com/matsu-chara/an-centos-6.5
cd an-centos-6.5
vagrant up
```

イメージ作成
```sh
vagrant vbguest
vagrant ssh -c "sudo ln -s -f /dev/null /etc/udev/rules.d/70-persistent-net.rules"
vagrant package
vagrant box add an-centos-6.5 package.box
```

イメージ利用
```sh
vagrant init an-centos-6.5
vagrant up
```

テスト
```sh
rake spec
```

### おまけ

[vagrant-pushover](http://deeeet.com/writing/2014/02/19/vagrant-pushover/)でvagrant up時にプッシュ通知([pushover](https://pushover.net/)利用)

```sh
vagrant plugin install vagrant-pushover
vagrant pushover-init
sed -ie "s/YOUR APP TOKEN/<APP TOKEN>/" .vagrant/pushover.rb
sed -ie "s/YOUR USER KEY/<USER KEY>/" .vagrant/pushover.rb
```
