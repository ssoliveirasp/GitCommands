*****************************************************
* Status de Arquivo
*****************************************************
#Checking the Status of Your Files
git status
git status -s //Short Status

*****************************************************
* Files Actions
*****************************************************
//Add Arquivos
git add Comandos.txt 
git add DeleteFile.js

//Rename Files
git mv Comandos.txt Comandos.ps1  

//Restore File to Unstaged
git restore --staged arquivoIgnore.js 

//Remove File
git rm  DeleteFile.js         #Apaga do Repositorio e Localmente
git rm --cached DeleteFile.js #Apaga somente do Repositório


//Rename File / Moving Files
git mv s.md FileRename.md
git commit -m "File Renamed s.mf to FileRename.md"

//Add specific file in Directory
git add log\*.log

//Excluir Arquivos Não monitorados
git clean -ffdx
-n  exibir os arquivos a serem excluídos sem de fato os excluir. 
-f  início de fato à exclusão de arquivos não monitorados do diretório atual
-d  informa ao git clean que você também quer excluir quaisquer diretórios não monitorados
-x  diz ao git clean para incluir também quaisquer arquivos ignorados
-i  modo interativo

*****************************************************
* Directory Actions
*****************************************************
//Remove specific file in Directory
git rm --cached logs\*.log

//Add todos os arquivos de um diretorio
git add *

//#Add\Remove Directory
git add logs
git commit -m "Remove Diretorio"
git rm --cached -r  logs #-r (recursively) é utilizado para indicar que é um diretorio
git push

*****************************************************
* Branch 
*****************************************************

//Cria uma nova Branch
git branch newBranch

//acesso novo branch
git checkout newBranch    

//remova o branch da seguinte forma
git branch -d newBranch   

/envia o branch para seu repositório remoto
git push origin newBranch /


*****************************************************
* Merge 
*******************************************
#Merge

//fazer o merge das alterações, você pode também pré-visualizá-as usando
git diff <branch origem> <branch destino> 

//merge de um outro branch ao seu branch ativo (ex. master), use
git merge <branch>                       

//Fix the last commit message
git commit --amend or git commit --amend -m "Fixes bug #42"

*****************************************************
* Check-in and Check-out 
*******************************************

//Undo checkout
git checkout -q --Arquivo.txt
git reset --hard

//Git Revert - If you have already committed files but realised you made a mistake then the command 
git revert HEAD~1

//você pode sobrescrever as alterações locais
git checkout -- <arquivo>

remover todas as alterações e commits locais, recupere o histórico mais recente do servidor e aponte para seu branch master
git fetch origin
git reset --hard origin/master

*****************************************************
* Atualização e Publicação 
*****************************************************
//Publica no repositorio online
git push
  
//Atualizar seu repositório local com a mais nova versão
git pull

*****************************************************
* Git Log
*****************************************************
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

//quick overview of the commit history
git log --oneline

*****************************************************
* Configurações
*****************************************************

## Alterando a porta para executar comandos online
 git config --global http.proxy winp:8080 
 git config --global http.proxy http[s]://userName(encoded):password(encoded)@proxyaddress:port

#Definir editor
 #https://uw-madison-aci.github.io/git-novice/02-setup/
 git config --global core.editor "code --wait" #vscode 

## Lista as Configuracoes
 git config --list
 git config --list --show-origin
 git config user.name John Doe

*****************************************************
* Rastreando Commit
*****************************************************

git cat-file -p 758681db0f25440804d76a6dee8808688989145e //Hash do commit
    // tree 78baffe2863807437000a9b81718202de0d1a544 //retorno
git cat-file -p 78baffe2863807437000a9b81718202de0d1a544 //Hash da Tree
    //100644 blob 0ca446aab9d09eac8625b53e3df8da661976c458    README.md
    //100644 blob 4ba2715c29418a360680c2e8b22bc8be2a86eb3e    RouterTable.Service.sln
git cat-file -p 4ba2715c29418a360680c2e8b22bc8be2a86eb3e
   // Retorna o conteudo do arquivo
