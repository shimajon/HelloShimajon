echo shell init [~/.profile]

pwd

# シェルの表示形式を指定
PS1="\! [\t] > "

# Subversion（コード管理ツール）を使用可能にする為、パス（環境変数）を追加する 
export PATH=${PATH}:/opt/local/bin:/usr/local/bin:/usr/local/mysql/bin
export MANPATH=${MANPATH}:/opt/local/share/man
export INFOPATH=${INFOPATH}:/opt/local/share/info
# android用
#export PATH=$PATH:/Developer/Android/adt-bundle-mac-x86_64-20140702/sdk/ndk-bundle 
#export PATH=$PATH:/Developer/Android/adt-bundle-mac-x86_64-20140702/sdk/platform-tools

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
# Your previous /Users/shimajun/.profile file was backed up as /Users/shimajun/.profile.macports-saved_2010-11-17_at_10:04:06
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

#GoogleChrome - 新しいバージョンが10.6で実行出来ないため、DL済に差替える;
# (DL済みをmount=>現GoogleChromeを削除=>マウントからコピー、unmount=>Open);
#FILE1=/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome
#FILE2=/Volumes/Google\ Chrome/Google\ Chrome.app/Contents/MacOS/Google\ Chrome
#cmp "${FILE1}" "${FILE2}"
#RET=$?
#case $RET in
#0) echo ""; ;;
#1) echo "file-copy";
#  hdiutil mount /Volumes/MacData/Archives/googlechrome.dmg;
#  rm -rf /Applications/Google\ Chrome.app;
#  cp -r /Volumes/Google\ Chrome/Google\ Chrome.app /Applications;
#  umount /Volumes/Google\ Chrome;
#  open /Applications/Google\ Chrome.app & ; ;;
#esac

# PHPのパス
export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"

# ファイルサーバーをマウントする
mount_smbfs //*****:"*****"@"192.168.3.200/shared/Public/" /Volumes/MacData/y_192.168.3.200/

####################################################
# GoogleChorome(10.6用)にファイルを差し替えする
function swap_dmg-to-app_chrome() {
  DMG_PATH="/Volumes/MacData/Archives/googlechrome.dmg"
  APP_PATH="/Applications/Google Chrome.app"
  DMG_APP_PATH="/Volumes/Google Chrome/Google Chrome.app"
  # (DMGをマウントする)
  hdiutil mount "${DMG_PATH}"
  if [ -e "${APP_PATH}" ]; then
    # (ファイルがあれば、一旦削除する)
    rm -rf "${APP_PATH}"
  fi
  # (DMG内のファイルを/Applicationsにコピーする)
  cp -r "${DMG_APP_PATH}" "${APP_PATH}"
}
#swap_dmg-to-app_chrome
####################################################

#zsh

