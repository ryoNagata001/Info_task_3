#==========================================
#Senpuki Logic
#b1 ={"x" => x}
#b2 ={"x" => x}
#a = {"q" => q}#initial value = false
#b = {"q" => q}#initial value = false
#==========================================
def sennpuuki(b1, b2, state)
  nextA = {"q" => false}
  nextB = {"q" => false}

  nextA = ( ((!state["a"]) & state["b"]) | (state["a"]&(!state["b"]))) & ((!b1["x"])&b2["x"])|\
  (state["a"]&(!b1["x"])&(!b2["x"]))
  nextB = ( ((!state["a"]) & (!state["b"])) & (b1["x"]&(!b2["x"])) )|\
  (state["a"]&(!b1["q"])&(b2["q"]))|\
  (state["b"]&(!b1["x"])&(!b2["x"]))

  r = {"a" => nextA, "b" => nextB}
  return r
end

begin
  print("=======扇風機=======\n")

  b1 = {"x" => true}
  b2 = {"x" => false}
  state = {"a" => false, "b" => false}

  print("入力 \n b1: ",b1 , "\n",
  " b2: ", b2, "\n",
  "状態遷移前 扇風機 \n state: ", state, "\n"
  )

  state = sennpuuki(b1, b2, state)

  print("状態遷移後 扇風機 \n state: ", state, "\n"
  )

  b1 = {"x" => false}
  b2 = {"x" => false}

  print("\n\n入力 \n b1: ",b1 , "\n",
  " b2: ", b2, "\n",
  "状態遷移前 扇風機 \n state: ", state, "\n"
  )

  state = sennpuuki(b1, b2, state)

  print("状態遷移後 扇風機 \n state: ", state, "\n"
  )


end
