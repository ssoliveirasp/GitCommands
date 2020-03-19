

## Alterando a porta para executar comandos online
 git config --global http.proxy winp:8080 
 git config --global http.proxy http[s]://userName(encoded):password(encoded)@proxyaddress:port

#Definir editor
 #https://uw-madison-aci.github.io/git-novice/02-setup/
 git config --global core.editor "code --wait" #vscode 

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

    #Add todos os arquivos de um diretorio
    git add *
 
    #Add\Remove Directory
    git add logs
    git commit -m "Remove Diretorio"
    git rm --cached -r  logs #-r (recursively) é utilizado para indicar que é um diretorio
    git push

#Rename File / Moving Files
git mv s.md FileRename.md
git commit -m "File Renamed s.mf to FileRename.md"

#Git Log

  #Log pretty-format
  git log --pretty=format:"%h - %an, %ar : %s" 

  # Option Description of Output
  # %H Commit hash
  # %h Abbreviated commit hash
  # %T Tree hash
  # %t Abbreviated tree hash
  # %P Parent hashes
  # %p Abbreviated parent hashes
  # %an Author name
  # %ae Author email
  # %ad Author date (format respects the --date=option)
  # %ar Author date, relative
  # %cn Committer name
  # %ce Committer email
  # %cd Committer date
  # %cr Committer date, relative
  # %s Subject

  #Log --since
   git log --since=2.weeks --pretty=format:"%h - %an, %ar : %s" 

  git log --pretty="%h - %s" --author='Junio C Hamano' 
          --since="2008-10-01" \ --before="2008-11-01" --no-merges -- t/

#Fix the last commit message
git commit --amend or git commit --amend -m "Fixes bug #42"

