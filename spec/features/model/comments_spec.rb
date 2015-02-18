require_relative '../../spec_helper'

class UserSpec
  describe 'user' do
    let(:user) { User.create(username: 'davie', password: "123", password_confirmation: "123")}
    let(:excuse) { Excuse.create(title: "this one", content: "this is a test, duh", user_id: 1)}
    let(:comment) {Comment.create(content: "nice one", user_id: 1, excuse_id: 1)}
    let(:vote) {Vote.create(user_id: 1, excuse_id: 1)}

    before do
      user
      excuse
      vote
      comment
    end

    it 'should respond to votes' do
      expect(comment).to be_a Comment
    end

  end
end