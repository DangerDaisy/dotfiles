pink=204;
blue=39;
white=15;
fg=0;
bg=0;
seperator="\uE0B0"; 
segment="";

#Git Symbols
in_repo="\uFBD9"; # Displayed in front of the repo name whenever you are in a repository.
git_status_clean="C"; # Displayed whenever the current directory is clean.

display_folder(){
	fg="$white";
	bg="$pink";
	segment="${segment}%F{$fg}%K{$bg}";
	if [[ "$PWD" == "$HOME" ]]; then
		segment="${segment} \uF015 ";	
	elif [[ "$PWD" == "$HOME/Documents" ]]; then
		segment="${segment} \uF15C ";	
	elif [[ "$PWD" == "$HOME/Downloads" ]]; then
		segment="${segment} \uF544 ";	
	else
		segment="${segment} %1d ";
	fi
	segment="${segment}%f";
}

display_git(){
	connect_segment;
	fg="$blue";
	bg="$white";
	segment="${segment}%F{$fg}%K{$bg} ${in_repo}";
	
	segment="${segment}  %B$(git rev-parse --abbrev-ref HEAD)%b";
}

display_git_status(){
	local check_clean="$(git status --porcelain)";
	local git_status="";
	if [ -z "${check_clean}" ]; then
		git_status="${git_status_clean}";
	fi

	segment="${segment} ${git_status} ";
}

display_time(){
	connect_segment;
	fg="${blue}";
	bg="${white}";
	segment="${segment} %F{$fg}%T"
}

connect_segment(){
	segment="${segment}%K{$fg}%F{$bg}${seperator}"
}

end_prompt(){
	segment="${segment} %k%F{$bg}${seperator}"
}

build_prompt(){
	display_folder;
	#$(git rev-parse &> /dev/null);
	if [ "$(git rev-parse HEAD 2> /dev/null)" != "" ]; then
		display_git;
		display_git_status;
	else
		display_time;
	fi
	end_prompt;
	echo "${segment} %f%k";
}

setopt promptsubst
autoload -Uz vcs_info
PROMPT='$(build_prompt)';
