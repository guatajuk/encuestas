class QuesController < ApplicationController
  before_action :set_que, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    #en este if se tienen en cuenta todas las ips publicas de la universidad de caldas
    
      @permitido="y"
      @ques = Que.all
      respond_with(@ques)
    
      
    
  end

  def show
    respond_with(@que)
  end

  def new
    @que = Que.new
    respond_with(@que)
  end

  def edit
  end

  def create
    @que = Que.new(que_params)
    
    type=@que.type
    if type == "Student"
      questions= [@que.q1,
              @que.q2,
              @que.q3,
              @que.q4,
              @que.q5,
              @que.q6,
              @que.q7,
              @que.q8,
              @que.q9,
              @que.q10,
              @que.q11,
              @que.q12,
              @que.q13,
              @que.q14,
              @que.q15,
              @que.q16,
              @que.q17,
              @que.q18,
              @que.q19,
              @que.q20,
              @que.q21,
              @que.q22,
              @que.q23,
              @que.q24,
              @que.q25,
              @que.q26,
              @que.q27
          ]
    totalScore = 0.0
    knowledge = 0.0
    methodology = 0.0
    bonds = 0.0
    
    for i in 0..3
      if questions[i]=="E"
        totalScore= totalScore + 5.0
        knowledge= knowledge + 5.0
      elsif questions[i]=="B"
        totalScore= totalScore + 4.2
        knowledge= knowledge + 4.2
      elsif questions[i]=="R"
        totalScore= totalScore + 3.0
        knowledge= knowledge + 3.0
      elsif questions[i]=="M"
        totalScore= totalScore + 2.5   
        knowledge= knowledge + 2.5
      end
      
    end

    for i in 4..21
      if questions[i]=="E"
        totalScore= totalScore + 5.0
        methodology= methodology + 5.0
      elsif questions[i]=="B"
        totalScore= totalScore + 4.2
        methodology= methodology + 4.2
      elsif questions[i]=="R"
        totalScore= totalScore + 3.0
        methodology= methodology + 3.0
      elsif questions[i]=="M"
        totalScore= totalScore + 2.5   
        methodology= methodology + 2.5
      end
    end

    for i in 22..26
      if questions[i]=="E"
        totalScore= totalScore + 5.0
        bonds= bonds + 5.0
      elsif questions[i]=="B"
        totalScore= totalScore + 4.2
        bonds= bonds + 4.2
      elsif questions[i]=="R"
        totalScore= totalScore + 3.0
        bonds= bonds + 3.0
      elsif questions[i]=="M"
        totalScore= totalScore + 2.5   
        bonds= bonds + 2.5
      end
    end

    @que2 = Que.new()

    @que2.type=@que.type
    @que2.q1=@que.q1
    @que2.q2=@que.q2
    @que2.q3=@que.q3
    @que2.q4=@que.q4
    @que2.q5=@que.q5
    @que2.q6=@que.q6
    @que2.q7=@que.q7
    @que2.q8=@que.q8
    @que2.q9=@que.q9
    @que2.q10=@que.q10
    @que2.q11=@que.q11
    @que2.q12=@que.q12
    @que2.q13=@que.q13
    @que2.q14=@que.q14
    @que2.q15=@que.q15
    @que2.q16=@que.q16
    @que2.q17=@que.q17
    @que2.q18=@que.q18
    @que2.q19=@que.q19
    @que2.q20=@que.q20
    @que2.q21=@que.q21
    @que2.q22=@que.q22
    @que2.q23=@que.q23
    @que2.q24=@que.q24
    @que2.q25=@que.q25
    @que2.q26=@que.q26
    @que2.q27=@que.q27
    @que2.knowledge=knowledge.to_s
    @que2.totalScore=totalScore.to_s
    @que2.methodology=methodology.to_s
    @que2.bonds=bonds.to_s
    @que2.labors=""
    @que2.save
    respond_with(@que2)

    elsif type == "Director"
      questions= [@que.q1,
              @que.q2,
              @que.q3,
              @que.q4,
              @que.q5,
              @que.q6,
              @que.q7,
              @que.q8,
              @que.q9,
              @que.q10,
              @que.q11,
              @que.q12,
              @que.q13,
              @que.q14,
              @que.q15,
              @que.q16,
              @que.q17,
              @que.q18,
              @que.q19,
              @que.q20,
              @que.q21,
              @que.q22,
              @que.q23,
              @que.q24,
              @que.q25
          ]
    totalScore = 0.0
    knowledge = 0.0
    methodology = 0.0
    labors = 0.0
    bonds = 0.0
    for i in 0..3
      if questions[i]=="E"
        totalScore= totalScore + 5.0
        knowledge= knowledge + 5.0
      elsif questions[i]=="B"
        totalScore= totalScore + 4.375
        knowledge= knowledge + 4.375
      elsif questions[i]=="R"
        totalScore= totalScore + 3.75
        knowledge= knowledge + 3.75
      elsif questions[i]=="M"
        totalScore= totalScore + 3.125  
        knowledge= knowledge + 3.125
      end
    end

    for i in 4..11
      if questions[i]=="E"
        totalScore= totalScore + 2.5
        methodology= methodology + 2.5
      elsif questions[i]=="B"
        totalScore= totalScore + 2.188
        methodology= methodology + 2.188
      elsif questions[i]=="R"
        totalScore= totalScore + 1.875
        methodology= methodology + 1.875
      elsif questions[i]=="M"
        totalScore= totalScore + 1.56  
        methodology= methodology + 1.46
      end
    end

    for i in 12..20
      if questions[i]=="E"
        totalScore= totalScore + 2.22
        labors= labors + 2.22
      elsif questions[i]=="B"
        totalScore= totalScore + 1.95
        labors= labors + 1.95
      elsif questions[i]=="R"
        totalScore= totalScore + 1.67
        labors= labors + 1.67
      elsif questions[i]=="M"
        totalScore= totalScore + 1.39
        labors= labors + 1.39
      end
    end

    for i in 21..24
      if questions[i]=="E"
        totalScore= totalScore + 2.5
        bonds= bonds + 2.5
      elsif questions[i]=="B"
        totalScore= totalScore + 2.4
        bonds= bonds + 2.4
      elsif questions[i]=="R"
        totalScore= totalScore + 1.88
        bonds= bonds + 1.88
      elsif questions[i]=="M"
        totalScore= totalScore + 1.57
        bonds= bonds + 1.57
      end
    end

    @que2 = Que.new()

    @que2.type=@que.type
    @que2.q1=@que.q1
    @que2.q2=@que.q2
    @que2.q3=@que.q3
    @que2.q4=@que.q4
    @que2.q5=@que.q5
    @que2.q6=@que.q6
    @que2.q7=@que.q7
    @que2.q8=@que.q8
    @que2.q9=@que.q9
    @que2.q10=@que.q10
    @que2.q11=@que.q11
    @que2.q12=@que.q12
    @que2.q13=@que.q13
    @que2.q14=@que.q14
    @que2.q15=@que.q15
    @que2.q16=@que.q16
    @que2.q17=@que.q17
    @que2.q18=@que.q18
    @que2.q19=@que.q19
    @que2.q20=@que.q20
    @que2.q21=@que.q21
    @que2.q22=@que.q22
    @que2.q23=@que.q23
    @que2.q24=@que.q24
    @que2.q25=@que.q25
    @que2.knowledge=knowledge.to_s
    @que2.totalScore=totalScore.to_s
    @que2.methodology=methodology.to_s
    @que2.bonds=bonds.to_s
    @que2.labors=labors.to_s
    @que2.save
    respond_with(@que2)
      
    elsif type == "Dean"
      questions= [@que.q1,
              @que.q2,
              @que.q3,
              @que.q4,
              @que.q5,
              @que.q6,
              @que.q7,
              @que.q8,
              @que.q9,
              @que.q10,
              @que.q11,
              @que.q12,
              @que.q13,
              @que.q14,
              @que.q15
          ]
    totalScore = 0.0
    labors = 0.0
    bonds = 0.0
    for i in 0..questions.length
      totalScore= totalScore + questions[i].to_f
    end

    for i in 0..7
      if questions[i]=="E"
        totalScore= totalScore + 5.0
        labors= labors + 5.0
      elsif questions[i]=="B"
        totalScore= totalScore + 4.375
        labors= labors + 4.375
      elsif questions[i]=="R"
        totalScore= totalScore + 3.75
        labors= labors + 3.75
      elsif questions[i]=="M"
        totalScore= totalScore + 3.13
        labors= labors + 3.13
      end
    end

    for i in 8..14
      if questions[i]=="E"
        totalScore= totalScore + 2.86
        bonds= bonds + 2.86
      elsif questions[i]=="B"
        totalScore= totalScore + 2.5
        bonds= bonds + 2.5
      elsif questions[i]=="R"
        totalScore= totalScore + 2.14
        bonds= bonds + 2.14
      elsif questions[i]=="M"
        totalScore= totalScore + 1.71
        bonds= bonds + 1.71
      end
    end

    @que2 = Que.new()

    @que2.type=@que.type
    @que2.q1=@que.q1
    @que2.q2=@que.q2
    @que2.q3=@que.q3
    @que2.q4=@que.q4
    @que2.q5=@que.q5
    @que2.q6=@que.q6
    @que2.q7=@que.q7
    @que2.q8=@que.q8
    @que2.q9=@que.q9
    @que2.q10=@que.q10
    @que2.q11=@que.q11
    @que2.q12=@que.q12
    @que2.q13=@que.q13
    @que2.q14=@que.q14
    @que2.q15=@que.q15
    @que2.knowledge=""
    @que2.totalScore=totalScore.to_s
    @que2.methodology=""
    @que2.bonds=bonds.to_s
    @que2.labors=labors.to_s
    @que2.save
    respond_with(@que2)
      
    else
      @que.save
      respond_with(@que)
    end
  end

  def update
    @que.update(que_params)
    respond_with(@que)
  end

  def destroy
    @que.destroy
    respond_with(@que)
  end

  private
    def set_que
      @que = Que.find(params[:id])
    end

    def que_params
      params.require(:que).permit(:type, :q1,:q2, :q3, :q4,:q5,:q6, :q7, :q8,:q9, :q10, :q11, :q12,:q13, :q14, :q15, :q16,:q17, :q18, :q19,:q20, :q21, :q22, :q23,:q24, :q25, :q26, :q27)
      
    end
end
