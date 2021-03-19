shopt -s progcomp
_testnames()
{
    local cur prev opts base
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts="--filter"
    
    if [[ $cur == -* || $prev == -* ]]; then
        case "${prev}" in
            "--filter")

                local result=$(find ./ -name "*Test.php" | xargs egrep -hr -E 'function +researcher[A-Za-z0-9_]*' -o | sed 's/function[ ]*//')
                COMPREPLY=( $(compgen -W "${result}" -- ${cur}) )
                return 0
        esac
    
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
        return 0
    else
        COMPREPLY=( $(compgen -f -X "*Test.php" -- ${cur}) )
    fi
    
    return 0
}

complete -d -X '.[^./]*' -F _testnames phpunit