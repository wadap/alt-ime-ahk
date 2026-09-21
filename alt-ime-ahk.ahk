; Mac キーボードの Command / Option を Windows 向けに入れ替え、
; 左右 Command キーの空打ちで IME の OFF/ON を切り替える
;
; 左 Command (LWin) -> 左 Alt、空打ちで IME OFF（英数）
; 左 Option  (LAlt) -> 左 Win
; 右 Command (RWin) -> 右 Alt、空打ちで IME ON（かな）
; 右 Option  (RAlt) -> 右 Win
;
; Author:     karakaram   http://www.karakaram.com/alt-ime-on-off

#Include IME.ahk

; Razer Synapseなど、キーカスタマイズ系のツールを併用しているときのエラー対策
#MaxHotkeysPerInterval 350

; 主要なキーを HotKey に設定し、何もせずパススルーする
*~a::
*~b::
*~c::
*~d::
*~e::
*~f::
*~g::
*~h::
*~i::
*~j::
*~k::
*~l::
*~m::
*~n::
*~o::
*~p::
*~q::
*~r::
*~s::
*~t::
*~u::
*~v::
*~w::
*~x::
*~y::
*~z::
*~1::
*~2::
*~3::
*~4::
*~5::
*~6::
*~7::
*~8::
*~9::
*~0::
*~F1::
*~F2::
*~F3::
*~F4::
*~F5::
*~F6::
*~F7::
*~F8::
*~F9::
*~F10::
*~F11::
*~F12::
*~`::
*~~::
*~!::
*~@::
*~#::
*~$::
*~%::
*~^::
*~&::
*~*::
*~(::
*~)::
*~-::
*~_::
*~=::
*~+::
*~[::
*~{::
*~]::
*~}::
*~\::
*~|::
*~;::
*~'::
*~"::
*~,::
*~<::
*~.::
*~>::
*~/::
*~?::
*~Esc::
*~Tab::
*~Space::
*~Left::
*~Right::
*~Up::
*~Down::
*~Enter::
*~PrintScreen::
*~Delete::
*~Home::
*~End::
*~PgUp::
*~PgDn::
    Return

; Mac キーボード左側
; 左 Command (LWin) を左 Alt として扱い、空打ちで IME を OFF
; 左 Option (LAlt) は左 Win として扱う
*LWin::
    Send {Blind}{LAlt Down}
    Send {Blind}{vk07}
    Return

*LWin up::
    Send {Blind}{LAlt Up}
    if (A_PriorHotkey == "*LWin")
    {
        IME_SET(0)
    }
    Return

*LAlt::Send {Blind}{LWin Down}
*LAlt up::Send {Blind}{LWin Up}

; Mac キーボード右側
; 右 Command (RWin) を右 Alt として扱い、空打ちで IME を ON
; 右 Option (RAlt) は右 Win として扱う
*RWin::
    Send {Blind}{RAlt Down}
    Send {Blind}{vk07}
    Return

*RWin up::
    Send {Blind}{RAlt Up}
    if (A_PriorHotkey == "*RWin")
    {
        IME_SET(1)
    }
    Return

*RAlt::Send {Blind}{RWin Down}
*RAlt up::Send {Blind}{RWin Up}
