#!/bin/sh
DIR="/opt/papersplease"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$DIR"

# Override statically-linked SDL to work around stuttering issue
# For details, see:
# - https://blog.jhm.dev/posts/papers-please/
# - https://www.reddit.com/r/programming/comments/ru7jau/fixing_stutters_in_papers_please_on_linux/hr3legh/
# - https://sdl-mirror.readthedocs.io/en/latest/README-dynapi.html
export SDL_DYNAMIC_API=/usr/lib/libSDL2.so

cd "$DIR"
exec ./PapersPlease "$@"
