module Main where

import Prelude (Unit, discard, identity)


import Effect (Effect)
import Effect.Console (log)

import Halogen.HTML.Elements
import Halogen.HTML as HH
import Halogen.HTML.Properties as HP
import Halogen.VDom.DOM.StringRenderer (render)

main :: Effect Unit
main = do
  log "begin"
  let x = renderTheHtml example
  log x
  log "done"

renderTheHtml :: forall i4. HH.HTML String i4 -> String
renderTheHtml (HH.HTML v) = render identity v

example :: forall w11 i12. HH.HTML w11 i12
example = p [HP.tabIndex 0] []
