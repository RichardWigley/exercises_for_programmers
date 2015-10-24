require 'test_helper'
require_relative '../../lib/pizza_party/pluralize'

describe 'pluralize' do
  describe 'regular' do
    it 'uses the singular when there is only one' do
      PizzaParty.pluralize(1, 'piece').must_equal '1 piece'
    end

    it 'uses the plural when there is more than one' do
      PizzaParty.pluralize(2, 'piece').must_equal '2 pieces'
    end
  end

  describe 'irregular' do
    it 'uses the singular when tere is only one' do
      PizzaParty.pluralize(1, 'person', plural: 'people').must_equal '1 person'
    end

    it 'uses the plural when there is more than one' do
      PizzaParty.pluralize(2, 'person', plural: 'people').must_equal '2 people'
    end
  end
end
