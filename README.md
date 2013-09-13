# Gather

Gather is a tool to simplify using git subtrees.
The script itself is merely my documentation to myself about how to use subtrees. So, why not just make the desired convention automatic?

The idea here is that you can create a simple gather.json file to manage details about your various subtrees.

This will make adding, merging, pulling from, or pushing to subtrees much easier, without needed to remember the specific prefixes, manage or add additional remotes, etc.

The code is crud, but fun:

	# subtree add
	gather install [<module]

	# subtree pull
	gather pull [<module]

	# subtree split, git push with temp branch
	gather push <module>

	# subtree merge
	gather merge <module>


## Requirements

* Ruby >= 1.9
* Git subtree

## Install

Put `gather` somewhere where your path can find it.

If you need to install `git subtree` and you are on a Unix-y system, you can try using the included `install-git-subtree.sh` script. I can't make any guarantees about it, so use at your own risk - but it worked for me.
