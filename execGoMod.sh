#! /bin/bash
echo "Start to exec 'git clone' go module ..."
isall=1

if [ ! isall ]; then
 echo "start if ...."
  #mkdir -p $GOPATH/src/golang.org
  #mkdir -p $GOPATH/src/golang.org/x
  #mkdir -p $GOPATH/src/cloud.google.com
 git clone https://github.com/kataras/iris.git $GOPATH/src/github.com/kataras/iris
 git clone https://github.com/kataras/golog.git  $GOPATH/src/github.com/kataras/golog
 git clone https://github.com/kataras/pio.git  $GOPATH/src/github.com/kataras/pio
 git clone https://github.com/cihub/seelog.git $GOPATH/src/github.com/cihub/seelog
 git clone https://github.com/denisenkom/go-mssqldb.git $GOPATH/src/github.com/denisenkom/go-mssqldb
 git clone https://github.com/GoogleCloudPlatform/google-cloud-go.git  $GOPATH/src/cloud.google.com/go
 git clone https://github.com/golang/net.git $GOPATH/src/github.com/golang/net
 git clone https://github.com/golang/sys.git $GOPATH/src/github.com/golang/sys
 git clone https://github.com/golang/tools.git $GOPATH/src/github.com/golang/tools
 git clone https://github.com/golang/text.git $GOPATH/src/github.com/golang/text
 git clone https://github.com/golang/crypto.git $GOPATH/src/github.com/golang/crypto
 git clone https://github.com/globalsign/mgo.git $GOPATH/src/github.com/globalsign/mgo
 git clone https://github.com/go-xorm/xorm.git $GOPATH/src/github.com/go-xorm/xorm
 ln -s $GOPATH/src/github.com/golang $GOPATH/src/golang.org/x
else
  echo "start else ..."
  #mkdir -p $GOPATH/src/golang.org
  #mkdir -p $GOPATH/src/golang.org/x
  #mkdir -p $GOPATH/src/cloud.google.com
  if [ ! -d "$GOPATH/src/github.com/kataras/iris" ];then
     git clone https://github.com/kataras/iris.git $GOPATH/src/github.com/kataras/iris
  else
    echo "iris已经存在"
  fi
  if [ ! -d "$GOPATH/src/github.com/kataras/golog" ];then
     git clone https://github.com/kataras/golog.git  $GOPATH/src/github.com/kataras/golog
  else
    echo "golog已经存在"
  fi
  if [ ! -d "$GOPATH/src/github.com/kataras/pio" ];then
     git clone https://github.com/kataras/pio.git  $GOPATH/src/github.com/kataras/pio
  else
    echo "pio已经存在"
  fi
  if [ ! -d "$GOPATH/src/github.com/cihub/seelog" ];then
      git clone https://github.com/cihub/seelog.git $GOPATH/src/github.com/cihub/seelog
  else
    echo "seelog已经存在"
  fi
  if [ ! -d "$GOPATH/src/github.com/denisenkom/go-mssqldb" ];then
      git clone https://github.com/denisenkom/go-mssqldb.git $GOPATH/src/github.com/denisenkom/go-mssqldb
  else
    echo "go-mssqldb已经存在"
  fi
  if [ ! -d "$GOPATH/src/cloud.google.com/go" ];then
     git clone https://github.com/GoogleCloudPlatform/google-cloud-go.git  $GOPATH/src/cloud.google.com/go
  else
    echo "cloud.google.com已经存在"
  fi
  if [ ! -d "$GOPATH/src/github.com/golang/net" ];then
     git clone https://github.com/golang/net.git $GOPATH/src/github.com/golang/net
  else
    echo "cloud.google.com已经存在"
  fi
  if [ ! -d "$GOPATH/src/github.com/golang/sys" ];then
      git clone https://github.com/golang/sys.git $GOPATH/src/github.com/golang/sys
  else
    echo "sys已经存在"
  fi
  if [ ! -d "$GOPATH/src/github.com/golang/tools" ];then
        git clone https://github.com/golang/tools.git $GOPATH/src/github.com/golang/tools
  else
      echo "tools已经存在"
  fi
  if [ ! -d "$GOPATH/src/github.com/golang/text" ];then
        git clone https://github.com/golang/text.git $GOPATH/src/github.com/golang/text
  else
        echo "tools已经存在"
  fi
  if [ ! -d "$GOPATH/src/github.com/golang/crypto" ];then
       git clone https://github.com/golang/crypto.git $GOPATH/src/github.com/golang/crypto
  else
        echo "crypto已经存在"
  fi

  if [ ! -d "$GOPATH/src/github.com/globalsign/mgo" ];then
     git clone https://github.com/globalsign/mgo.git $GOPATH/src/github.com/globalsign/mgo
  else
     echo "mgo已经存在"
  fi

  if [ ! -d "$GOPATH/src/github.com/go-xorm/xorm" ];then
     git clone https://github.com/go-xorm/xorm.git $GOPATH/src/github.com/go-xorm/xorm
  else
     echo "xorm已经存在"
  fi

  rm -rf $GOPATH/src/golang.org/x
  ln -s $GOPATH/src/github.com/golang $GOPATH/src/golang.org/x
fi
echo "Success exec git clone  ..."
