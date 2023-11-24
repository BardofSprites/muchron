-- Main.hs
import Control.Monad (void)
import Graphics.UI.Gtk

import Timer
import PomodoroTimer

main :: IO ()
main = do
  -- Example regular timer
  let exampleRegular = newTimer Regular (0, 30, 0)  -- 30 minutes regular timer
  print exampleRegular

  -- Example pomodoro timer
  let pomodoroInstance = newPomodoroTimer 4 (0, 25, 0) (0, 5, 0)  -- Example Pomodoro Timer instance
  print pomodoroInstance

  -- GTK GUI stuff
  void $ initGUI

  window <- windowNew
  set window [windowTitle := "GTK Hello World", containerBorderWidth := 10]

  -- default window size larger
  windowSetDefaultSize window 400 300

  button <- buttonNewWithLabel "Click Me"
  onClicked button (putStrLn "Button Clicked!")

  containerAdd window button

  onDestroy window mainQuit
  widgetShowAll window
  mainGUI
