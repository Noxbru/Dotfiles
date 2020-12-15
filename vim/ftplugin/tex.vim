
" Map correctly the Alt-g so it works with gnome-terminal
" NOTE: this actually breaks (in my keyboard) introducing the letter
" 'í', but, I didn't even know that letter. (looks like an i with tilde)
set <M-m>=m
imap m <M-m>

imap <M-m>ga \alpha
imap <M-m>gb \beta
imap <M-m>gc \chi
imap <M-m>gd \delta
imap <M-m>gD \Delta
imap <M-m>ge \epsilon
imap <M-m>gE \varepsilon
imap <M-m>gf \phi
imap <M-m>gF \Phi
imap <M-m>gg \gamma
imap <M-m>gG \Gamma
imap <M-m>gh \eta
imap <M-m>gi \iota
imap <M-m>gj \varphi
imap <M-m>gk \kappa
imap <M-m>gl \lambda
imap <M-m>gL \Lambda
imap <M-m>gm \mu
imap <M-m>gn \nu
imap <M-m>go \omega
imap <M-m>gO \Omega
imap <M-m>gp \pi
imap <M-m>gP \Pi
imap <M-m>gq \vartheta
imap <M-m>gr \rho
imap <M-m>gR \varrho
imap <M-m>gs \sigma
imap <M-m>gS \Sigma
imap <M-m>gt \tau
imap <M-m>gT \varsigma
imap <M-m>gu \upsilon
imap <M-m>gU \Upsilon
imap <M-m>gv \theta
imap <M-m>gV \Theta
"imap <M-m>gw \omega
"imap <M-m>gW \Omega
imap <M-m>gx \xi
imap <M-m>gX \Xi
imap <M-m>gy \psi
imap <M-m>gY \Psi
imap <M-m>gz \zeta

imap <M-m>p \partial

" Note that these mappings assume that you have Ultisnips
imap <M-m>( lr(<TAB>
imap <M-m>[ lr[<TAB>
imap <M-m><bar> lr<bar><TAB>
imap <M-m>< lra<TAB>

imap <M-m>f frac<TAB>
