require 'spec_helper'

# Testing all factories
describe "factories" do
  FactoryGirl.factories.map(&:name).each do |factory_name|
    describe "factory #{factory_name}" do
      it 'is valid' do
        factory = build(factory_name)

        if factory.respond_to?(:valid?)
          factory.valid?
          errors = factory.errors.full_messages.join(',')
          expect(factory).to be_valid, errors
        end
      end

      FactoryGirl.factories[factory_name].definition.defined_traits.map(&:name).each do |trait_name|
        it "is valid with trait #{trait_name}" do
          factory = build(factory_name, trait_name)

          if factory.respond_to?(:valid?)
            factory.valid?
            errors = factory.errors.full_messages.join(',')
            expect(factory).to be_valid, errors
          end
        end
      end
    end
  end
end