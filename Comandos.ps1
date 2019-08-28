

## Alterando a porta para executar comandos online
 git config --global http.proxy winp:8080 
 git config --global http.proxy http[s]://userName(encoded):password(encoded)@proxyaddress:port


## Lista as Configuracoes
 git config --list

 git config --list --show-origin

 git config user.name
 John Doe

#Checking the Status of Your Files
 git status

  #Short Status
  git status -s

# Files Actions
  #Add Arquivos
   git add Comandos.txt
  #Rename Files
  git mv Comandos.txt Comandos.ps1  
  #Restore File to Unstaged
  git restore --staged arquivoIgnore.js 

  #Publica no repositorio online
  git push
  
  #Add\Remove File

    #Add/Remove File
    git add DeleteFile.js
    git rm  DeleteFile.js         #Apaga do Repositorio e Localmente
    git rm --cached DeleteFile.js #Apaga somente do Repositório

    #Add/Remove specific file in Directory
    git add log\*.log
    git rm --cached logs\*.log

    #Add\Remove Directory
    git add logs
    git commit -m "Remove Diretorio"
    git rm --cached -r  logs #-r (recursively) é utilizado para indicar que é um diretorio
    git push