function ll --wraps=ls --wraps='eza -l' --wraps='eza -l --icons always' --description 'alias ll=eza -l --icons always'
  eza -l --icons always $argv
        
end
