echo shell init [~/.profile]

pwd

# シェルの表示形式を指定
PS1="\! [\t] > "

# Subversion（コード管理ツール）を使用可能にする為、パス（環境変数）を追加する 
export PATH=${PATH}:/opt/local/bin:/usr/local/bin:/usr/local/mysql/bin
export MANPATH=${MANPATH}:/opt/local/share/man
export INFOPATH=${INFOPATH}:/opt/local/share/info
# android用
export PATH=$PATH:/Developer/Android/adt-bundle-mac-x86_64-20140702/sdk/ndk-bundle 
export PATH=$PATH:/Developer/Android/adt-bundle-mac-x86_64-20140702/sdk/platform-tools

# subversion server startup with Repository path
# svnserve -d -r /svnrep
# svnserve -d
# svnserve -d -r /volumes/macdata/svnrep   # no_use
# svnserve -d -r /volumes/macdata/svnrep_test
# svnserve -d -r /volumes/Leopard/svnrep
svnserve -d -r /volumes/MacData/svnrep

# clean .trash
#rm -drf ~/.trash/*

# javac エンコーディング関連
export JAVA_OPTS='-Dgroovy.source.encoding=UTF-8 -Dfile.encoding=UTF-8'
alias javac='javac -encoding UTF-8'
alias java='java -Dfile.encoding=UTF-8'
alias groovy="groovy -c UTF-8"
alias groovyc="groovyc --encoding UTF-8"

# 「atrun」のサービス(時刻起動)を起動する
#sudo launchctl load -w /system/library/launchdaemons/com.apple.atrun.plist
# 上のサービスで、「at」コマンドが使用可能となる
# ex) at 13:30 (enter) open ~/desktop/memo.rtf (control + d)

# メモ
# Finderで不可視ファイルを表示する
# defaults write com.apple.finder AppleShowAllFiles -boolean TRUE
# 上記を元に戻す
# defaults write com.apple.finder AppleShowAllFiles -boolean FALSE
# Finderの再起動
# killall Finder
#
# MIBの取得
# snmpget -Os -c public -v 1 localhost [OID]
# snmpget -Os -c public -v 1 localhost sysDescr.0
#
# MIBの値リスト表示
# snmpwalk -Os -c public -v 1 localhost

PATH=${PATH}:/Developer/Applications/Utilities/PackageMaker.app/Contents/MacOS
##

# MacPorts Installer addition on 2010-11-17_at_10:04:06: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

#For PostgreSQL
##export PATH=/usr/local/pgsql/bin:$PATH
##export MANPATH=/usr/local/pgsql/man:$MANPATH
export PATH=/usr/local/Cellar/postgresql/9.1.2/bin:$PATH

# PHP - 
export PATH=/usr/local/Cellar/php/5.3.8/bin:$PATH

# Autoconf
echo 'export PATH=/usr/local/autoconf/bin:$PATH' >> ~/.bash_profile

zsh
