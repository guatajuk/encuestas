json.array!(@ques) do |que|
  json.extract! que, :id, :type, :q1,:q2, :q3, :q4,:q5,:q6, :q7, :q8,:q9, :q10, :q11, :q12,:q13, :q14, :q15, :q16,:q17, :q18, :q19,:q20, :q21, :q22, :q23,:q24, :q25, :q26, :q27, :totalScore, :knowledge, :methodology, :bonds, :labors
  json.url que_url(que, format: :json)
end