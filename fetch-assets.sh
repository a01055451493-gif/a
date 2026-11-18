#!/usr/bin/env bash
# Downloads the Figma assets into ./assets. Figma's URLs expire after 7 days;
# if they have, re-run get_design_context on node 60:148 to get fresh ones.
set -euo pipefail
cd "$(dirname "$0")/.." && mkdir -p assets && cd assets
P="https://www.figma.com/api/mcp/asset/665daf78-1fba-4ba8-9233-eaafbaef8c6f"
get(){ curl -fSL "$P/$1" -o "$2" && echo "ok  $2"; }
get b8ad8.svg levels.svg;        get 940c2.png card-1.png
get ebf6c.png card-2.png;        get 3843d.png card-3.png
get acece.png card-4.png;        get 4056f.png frame-3.png
get 56533.png scale.png;         get f4ccf.png add-basket.png
get 075f0.png shopping-bag.png;  get 6f91c.png people.png
get 6ee04.png profile.png;       get 5722d.png address.png
get 08f91.svg ellipse-57.svg;    get 5a29f.svg vaccine.svg
get 75d74.svg hospital.svg;      get c98c6.svg chevron.svg
get ecc8c.svg line-24.svg;       get 04c90.svg search.svg
get d5178.svg bell.svg;          get 39d5a.svg ellipse-31.svg
get 3c8cf.svg home.svg
