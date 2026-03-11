function tsrun --description "alias tsrun=ts file.ts && node file.js"
    tsc $argv[1] && node (string replace ".ts" ".js" -- $argv[1])
end
