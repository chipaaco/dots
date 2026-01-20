#Requires AutoHotkey v2.0
SetWorkingDir(A_ScriptDir)

; Cargar la DLL desde el directorio del script
VDA_PATH := A_ScriptDir . "\VirtualDesktopAccessor.dll"
hVirtualDesktopAccessor := DllCall("LoadLibrary", "Str", VDA_PATH, "Ptr")

if not hVirtualDesktopAccessor {
    MsgBox("Error: No se pudo cargar VirtualDesktopAccessor.dll. Verifica que el archivo esté en la misma carpeta.")
    ExitApp
}

; Obtener la dirección de la función para cambiar de escritorio
GoToDesktopNumberProc := DllCall("GetProcAddress", "Ptr", hVirtualDesktopAccessor, "AStr", "GoToDesktopNumber", "Ptr")

; Función constructora para llamar al DLL
GoToDesktopNumber(num) {
    global GoToDesktopNumberProc
    DllCall(GoToDesktopNumberProc, "Int", num, "Int")
}

; Atajos de teclado (Win + Número)
; Nota: El índice de los escritorios comienza en 0 en la DLL.
#1::GoToDesktopNumber(0) ; Escritorio 1
#2::GoToDesktopNumber(1) ; Escritorio 2
#3::GoToDesktopNumber(2) ; Escritorio 3
#4::GoToDesktopNumber(3) ; Escritorio 4
#5::GoToDesktopNumber(4) ; Escritorio 5
#6::GoToDesktopNumber(5) ; Escritorio 6
#7::GoToDesktopNumber(6) ; Escritorio 7
#8::GoToDesktopNumber(7) ; Escritorio 8
#9::GoToDesktopNumber(8) ; Escritorio 9
