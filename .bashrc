function lh # localhost directory..
{
Color_Off="\033[0m"
GREEN="\033[1;32m"
folders=`ls /Code/ | grep $*`

echo "Matched folders:"
echo "-----"
echo "$GREEN$folders$Color_Off"
echo "-----"

folders_count=`echo "$folders" | grep -v "^$" | wc -l | tr -d ' '`
if [[ $folders_count = 0 ]]; then
    echo "No folder matches search: $*"
    echo "$GREEN"
    echo `ls /Code/`
    echo "$Color_Off"
else
  folder=`echo "$folders" | grep -m1 $*`
  echo "cd /Code/$GREEN$folder$Color_Off"
  cd /Code/$folder
fi

}
# # Credits: https://tung-dang.github.io/create-a-symbolic-link-at-system-node-path-to-default-nvm-node-path
function update_system_node_path {
    SYSTEM_NODE_PATH="/usr/local/bin/node"
    SYSTEM_NPM_PATH="/usr/local/bin/npm"
    NVM_DEFAULT_NODE_PATH="$(nvm which default)"
    NVM_DEFAULT_NPM_PATH="$(which npm)"
    ln -Ffsv "$NVM_DEFAULT_NODE_PATH" "$SYSTEM_NODE_PATH"
    ln -Ffsv "$NVM_DEFAULT_NPM_PATH" "$SYSTEM_NPM_PATH"
}

function gf
{
Color_Off="\033[0m"
GREEN="\033[1;32m"
branches=`git branch`
search=$*

color_options=""
while [[ $# > 0 ]]; do
    branches=`echo "$branches" | grep -i $* | grep --invert-match "*"`
    color_options="$color_options $*"
    shift
done

echo "Matched branches:"
echo "$branches" | grep $color_options

branches_count=`echo "$branches" | grep -v "^$" | wc -l | tr -d ' '`
if [[ $branches_count = 0 ]]; then
    echo "No branch matches search [$search]"
    echo "$GREEN"
    git branch -a
    echo "$Color_Off"
    echo "Exiting"
else
    branch=`echo "$branches" | tr -d '* ' | grep -m1 "$*"`
    echo "git checkout $GREEN$branch$Color_Off"
    git checkout "$branch"
fi

}

function ar
{
	php artisan $*
}

function art
{
	php artisan tinker $*
}

function fresh
{
	php artisan migrate:fresh --seed $*
}

function serve
{
	php artisan serve --host 0.0.0.0 $*
}

function nr
{
	npm run $*
}

function nrw
{
	npm run watch $*
}

function nrp
{
	npm run prod $*
}


function wip
{
	git add .
	git commit -am "WIP"
}

function nah
{
	git add .
	git stash save "Nah! $*"
}
