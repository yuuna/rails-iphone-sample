$:.unshift File.dirname(__FILE__)

require 'rubygems'
require 'rspec'
require 'phone_number'

describe PhoneNumber do
  context 'initialize check' do
    it 'should be check correct phone number' do
      phone_number = PhoneNumber.new('03-3333-3333')
      expect(phone_number.correct?).to be_true
    end

    it 'should be check over size phone number' do
      phone_number = PhoneNumber.new('01-123456-890123')
      expect(phone_number.correct?).to be_false
    end

    it 'should be check numeric number' do
      phone_number = PhoneNumber.new('03-PHONE-NUMBER')
      expect(phone_number.correct?).to be_false
    end
  end
  context 'convert phone number' do
    it 'should be convert phone number' do
      phone_number = PhoneNumber.new('03-3333-3333')
#      expect(phone_number.convert).to be('+81-3-3333-3333')
      expect(phone_number.convert).to match(/^\+81\-3\-3333\-3333$/)
    end
  end
end
