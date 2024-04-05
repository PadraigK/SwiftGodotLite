Experimental version of SwiftGodot that compiles for SwiftWasm 

Changes made to get this working:
* Fully removed all macro code
* Updated code gen to use explicit Int64 instead of Int, which is 32 bit in Wasm
* Removed NIO locking code — it would not compile as it was. I also believe that wasm is single thread, so maybe this is ok?
* Updated some hex constants to fit in 32 bit. No idea if this is safe.
