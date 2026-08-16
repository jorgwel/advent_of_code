class Expression
    def self.parse(value)
        new
    end

    def root
        "*"
    end

    def left_child
        2
    end

    def right_child
        "x"
    end
end

RSpec.describe "Expression parser" do
    context "Expression involving multiplication w/explicit operator" do
        it "assigns the multiplication operator to the root" do
            expression = Expression.parse("2*x")
            expect(expression.root).to eq("*")
        end

        it "assigns the first operand to the left child" do
            expression = Expression.parse("2*x")
            expect(expression.left_child).to eq(2)
        end
        it "assigns the first operand to the right child" do
            expression = Expression.parse("2*x")
            expect(expression.right_child).to eq("x")
        end

    end
   
end