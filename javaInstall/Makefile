# Kullanılan java
version:
	java -version

# Kullanılan java nın bulunduğu yerin adresi
where:
	readlink -f $(which java)

# Indirmek istediğimiz depo
add_repo:
	sudo add-apt-repository ppa:webupd8team/java
	sudo apt-get update

# Java 6 yoksa ve daha üst sürümü yüklü değilse indirir
install_java6:
	sudo apt-get install oracle-java6-installer

# Java 7 yoksa ve daha üst sürümü yüklü değilse indirir
install_java7:
	sudo apt-get install oracle-java7-installer

# Java 8 yoksa ve daha üst sürümü yüklü değilse indirir
install_java8:
        sudo apt-get install oracle-java8-installer

# Java 6 dan daha düsük bir sürüm varsa siler ve Java 6 sürümü varsayılan yapar.
set_default_java6:
	sudo apt-get install oracle-java6-set-default

# Java 7 dan daha düsük bir sürüm varsa siler ve Java 7 sürümü varsayılan yapar.
set_default_java7:
	sudo apt-get install oracle-java7-set-default

# Java 8 dan daha düsük bir sürüm varsa siler ve Java 8 sürümü varsayılan yapar.
set_default_java8:
        sudo apt-get install oracle-java8-set-default

# Java 6 varsa kaldırır	
uninstall_java6:
	sudo apt-get remove oracle-java6-installer

# Java 7 varsa kaldırır
uninstall_java7:
	sudo apt-get remove oracle-java7-installer

# Java 8 varsa kaldırır
uninstall_java8:
        sudo apt-get remove oracle-java8-installer	

