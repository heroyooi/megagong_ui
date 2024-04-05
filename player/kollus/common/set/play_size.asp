<%
    vw = 21 : vh = 9

    if PlayerLoc = "P" Then
    Else
        '시네마와이드영상유무
        if vw = "21" then
            if UseWidth > 1680 Then
                popw = 1680 : poph = 694
            Elseif UseWidth > 1280 Then
                popw = 1320 : poph = 540
            Else
                popw = 1024 : poph = 504
            End if
        Else
            if UseWidth > 1680 Then
                popw = 1440 : poph = 746
            Elseif UseWidth > 1280 Then
                popw = 1320 : poph = 678
            Else
                popw = 1024 : poph = 504
            End if
        End if

        if PlayerTabCtrl = "OFF" Then
            popw = popw - 290
        End if

        if PlayerKbn = "H" Then
            if vw = "21" Then
                if UseWidth > 1680 Then
                    popw = 1680 : poph = 642
                Elseif UseWidth > 1280 Then
                    popw = 1320 : poph = 480
                Else
                    popw = 1024 : poph = 504
                End if
            Else
                if UseWidth > 1280 Then
                    popw = 1320 : poph = 594
                Else
                    popw = 1024 : poph = 504
                End if
            End if
        End if

        if PlayerKbn = "S" Then
            if vw = "21" Then
                if UseWidth > 1680 Then
                    popw = 1680 : poph = 842
                Elseif UseWidth > 1280 Then
                    popw = 1320 : poph = 680
                Else
                    popw = 1024 : poph = 704
                End if
            Else
                if UseWidth > 1280 Then
                    popw = 1320 : poph = 794
                Else
                    popw = 1024 : poph = 704
                End if
            End if
        End if

    End if

    if userBrowser = "Whale" Then poph = poph + 18
    if PlayerKbn = "M" Then poph = poph + 54
%>