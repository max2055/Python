#############################################################################
# Generated by PAGE version 4.10
# in conjunction with Tcl version 8.6
set vTcl(timestamp) ""


if {!$vTcl(borrow)} {

set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #d9d9d9
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #d8d8d8
set vTcl(active_menu_fg) #000000
}

#################################
#LIBRARY PROCEDURES
#


if {[info exists vTcl(sourcing)]} {

proc vTcl:project:info {} {
    set base .top37
    namespace eval ::widgets::$base {
        set dflt,origin 1
        set runvisible 1
    }
    set site_4_0 .top37.tNo38.t0 
    set site_4_0 $site_4_0
    set site_4_1 .top37.tNo38.t1 
    set site_4_0 $site_4_1
    set site_4_2 .top37.tNo38.t2 
    set site_4_0 $site_4_2
    namespace eval ::widgets_bindings {
        set tagslist _TopLevel
    }
    namespace eval ::vTcl::modules::main {
        set procs {
        }
        set compounds {
        }
        set projectType single
    }
}
}

#################################
# GENERATED GUI PROCEDURES
#

proc vTclWindow.top37 {base} {
    if {$base == ""} {
        set base .top37
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -background {#d9d9d9} -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 600x450
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 1
    wm maxsize $top 1585 870
    wm minsize $top 1 1
    wm overrideredirect $top 0
    wm resizable $top 0 0
    wm deiconify $top
    wm title $top "Notepads managment"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    ttk::style configure TNotebook -background #d9d9d9
    ttk::style configure TNotebook.Tab -background #d9d9d9
    ttk::style configure TNotebook.Tab -foreground #000000
    ttk::style configure TNotebook.Tab -font TkDefaultFont
    ttk::style map TNotebook.Tab -background [list disabled #d9d9d9 selected #d9d9d9]
    ttk::notebook $top.tNo38 \
        -width 582 -height 383 -takefocus {} 
    vTcl:DefineAlias "$top.tNo38" "TNotebook1" vTcl:WidgetProc "Toplevel1" 1
    frame $top.tNo38.t0 \
        -background {#d9d9d9} -highlightcolor black 
    vTcl:DefineAlias "$top.tNo38.t0" "TNotebook1_t0" vTcl:WidgetProc "Toplevel1" 1
    $top.tNo38 add $top.tNo38.t0 \
        -padding 0 -sticky nsew -state normal -text Add -image {} \
        -compound none -underline -1 
    set site_4_0  $top.tNo38.t0
    text $site_4_0.tex40 \
        -background white -font TkTextFont -foreground black -height 232 \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black -width 396 \
        -wrap word 
    .top37.tNo38.t0.tex40 configure -font TkTextFont
    .top37.tNo38.t0.tex40 insert end text
    vTcl:DefineAlias "$site_4_0.tex40" "inputNotice" vTcl:WidgetProc "Toplevel1" 1
    entry $site_4_0.ent41 \
        -background white -font TkFixedFont -foreground {#000000} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$site_4_0.ent41" "inputTitle" vTcl:WidgetProc "Toplevel1" 1
    label $site_4_0.lab42 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text Title 
    vTcl:DefineAlias "$site_4_0.lab42" "Label1" vTcl:WidgetProc "Toplevel1" 1
    label $site_4_0.lab43 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text Notice: 
    vTcl:DefineAlias "$site_4_0.lab43" "Label2" vTcl:WidgetProc "Toplevel1" 1
    button $site_4_0.but44 \
        -activebackground {#d9d9d9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text Add 
    vTcl:DefineAlias "$site_4_0.but44" "Button2" vTcl:WidgetProc "Toplevel1" 1
    bind $site_4_0.but44 <Button-1> {
        lambda e: add_button(e)
    }
    button $site_4_0.but45 \
        -activebackground {#d9d9d9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text Clear 
    vTcl:DefineAlias "$site_4_0.but45" "Button3" vTcl:WidgetProc "Toplevel1" 1
    bind $site_4_0.but45 <Button-1> {
        lambda e: clear_button(e)
    }
    place $site_4_0.tex40 \
        -in $site_4_0 -x 10 -y 100 -width 396 -relwidth 0 -height 232 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.ent41 \
        -in $site_4_0 -x 50 -y 30 -width 346 -relwidth 0 -height 20 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.lab42 \
        -in $site_4_0 -x 10 -y 30 -anchor nw -bordermode ignore 
    place $site_4_0.lab43 \
        -in $site_4_0 -x 10 -y 80 -anchor nw -bordermode ignore 
    place $site_4_0.but44 \
        -in $site_4_0 -x 430 -y 100 -anchor nw -bordermode ignore 
    place $site_4_0.but45 \
        -in $site_4_0 -x 430 -y 140 -anchor nw -bordermode ignore 
    frame $top.tNo38.t1 \
        -background {#d9d9d9} -highlightcolor black 
    vTcl:DefineAlias "$top.tNo38.t1" "TNotebook1_t1" vTcl:WidgetProc "Toplevel1" 1
    $top.tNo38 add $top.tNo38.t1 \
        -padding 0 -sticky nsew -state normal -text Display -image {} \
        -compound none -underline -1 
    set site_4_1  $top.tNo38.t1
    text $site_4_1.tex46 \
        -background white -font TkTextFont -foreground black -height 272 \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black -width 346 \
        -wrap word 
    .top37.tNo38.t1.tex46 configure -font TkTextFont
    .top37.tNo38.t1.tex46 insert end text
    vTcl:DefineAlias "$site_4_1.tex46" "outputNotice" vTcl:WidgetProc "Toplevel1" 1
    entry $site_4_1.ent47 \
        -background white -font TkFixedFont -foreground {#000000} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$site_4_1.ent47" "inputSearchTitle" vTcl:WidgetProc "Toplevel1" 1
    label $site_4_1.lab48 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text Title 
    vTcl:DefineAlias "$site_4_1.lab48" "Label3" vTcl:WidgetProc "Toplevel1" 1
    button $site_4_1.but49 \
        -activebackground {#d9d9d9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text Next 
    vTcl:DefineAlias "$site_4_1.but49" "Button4" vTcl:WidgetProc "Toplevel1" 1
    bind $site_4_1.but49 <Button-1> {
        lambda e: next_button(e)
    }
    button $site_4_1.but50 \
        -activebackground {#d9d9d9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text Back 
    vTcl:DefineAlias "$site_4_1.but50" "Button5" vTcl:WidgetProc "Toplevel1" 1
    bind $site_4_1.but50 <Button-1> {
        lambda e: back_button(e)
    }
    button $site_4_1.but38 \
        -activebackground {#d9d9d9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text Search 
    vTcl:DefineAlias "$site_4_1.but38" "Button7" vTcl:WidgetProc "Toplevel1" 1
    bind $site_4_1.but38 <Button-1> {
        lambda e: search_button(e)
    }
    button $site_4_1.but39 \
        -activebackground {#d9d9d9} -background {#d9d9d9} \
        -foreground {#000000} -highlightcolor black -text Delete 
    vTcl:DefineAlias "$site_4_1.but39" "Button8" vTcl:WidgetProc "Toplevel1" 1
    bind $site_4_1.but39 <Button-1> {
        lambda e: delete_button(e)
    }
    place $site_4_1.tex46 \
        -in $site_4_1 -x 10 -y 70 -width 346 -relwidth 0 -height 272 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_1.ent47 \
        -in $site_4_1 -x 50 -y 30 -width 296 -relwidth 0 -height 20 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_1.lab48 \
        -in $site_4_1 -x 10 -y 30 -anchor nw -bordermode ignore 
    place $site_4_1.but49 \
        -in $site_4_1 -x 400 -y 120 -anchor nw -bordermode ignore 
    place $site_4_1.but50 \
        -in $site_4_1 -x 400 -y 160 -anchor nw -bordermode ignore 
    place $site_4_1.but38 \
        -in $site_4_1 -x 400 -y 80 -anchor nw -bordermode ignore 
    place $site_4_1.but39 \
        -in $site_4_1 -x 400 -y 200 -anchor nw -bordermode ignore 
    frame $top.tNo38.t2 \
        -background {#d9d9d9} -highlightcolor black 
    vTcl:DefineAlias "$top.tNo38.t2" "TNotebook1_t2" vTcl:WidgetProc "Toplevel1" 1
    $top.tNo38 add $top.tNo38.t2 \
        -padding 0 -sticky nsew -state normal -text Create -image {} \
        -compound none -underline -1 
    set site_4_2  $top.tNo38.t2
    label $site_4_2.lab38 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text {For creating a new notepads managment.} 
    vTcl:DefineAlias "$site_4_2.lab38" "Label4" vTcl:WidgetProc "Toplevel1" 1
    button $site_4_2.but39 \
        -activebackground {#d9d9d9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text {Create } 
    vTcl:DefineAlias "$site_4_2.but39" "Button6" vTcl:WidgetProc "Toplevel1" 1
    bind $site_4_2.but39 <Button-1> {
        lambda e: create_button(e)
    }
    place $site_4_2.lab38 \
        -in $site_4_2 -x 50 -y 50 -anchor nw -bordermode ignore 
    place $site_4_2.but39 \
        -in $site_4_2 -x 130 -y 90 -anchor nw -bordermode ignore 
    button $top.but39 \
        -activebackground {#d9d9d9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text Exit 
    vTcl:DefineAlias "$top.but39" "Button1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.but39 <Button-1> {
        lambda e: exit_button(e)
    }
    label $top.lab51 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black 
    vTcl:DefineAlias "$top.lab51" "errorOutput" vTcl:WidgetProc "Toplevel1" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.tNo38 \
        -in $top -x 10 -y 10 -width 582 -relwidth 0 -height 383 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but39 \
        -in $top -x 240 -y 410 -width 117 -relwidth 0 -height 26 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab51 \
        -in $top -x 20 -y 410 -width 206 -relwidth 0 -height 18 -relheight 0 \
        -anchor nw -bordermode ignore 

    vTcl:FireEvent $base <<Ready>>
}

#############################################################################
## Binding tag:  _TopLevel

bind "_TopLevel" <<Create>> {
    if {![info exists _topcount]} {set _topcount 0}; incr _topcount
}
bind "_TopLevel" <<DeleteWindow>> {
    if {[set ::%W::_modal]} {
                vTcl:Toplevel:WidgetProc %W endmodal
            } else {
                destroy %W; if {$_topcount == 0} {exit}
            }
}
bind "_TopLevel" <Destroy> {
    if {[winfo toplevel %W] == "%W"} {incr _topcount -1}
}

  set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
Window show .
Window show .top37 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}

