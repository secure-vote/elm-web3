module Web3.Internal
    exposing
        ( Request
        , Response
        , expectStringResponse
        )

import Json.Encode as Encode
import Web3.Types exposing (Expect(..))


type alias Request a =
    { func : String
    , args : Encode.Value
    , expect : Expect a
    }


type alias Response =
    String


expectStringResponse : (Response -> Result String a) -> Expect a
expectStringResponse =
    Native.Web3.expectStringResponse