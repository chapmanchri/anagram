module ApplicationHelper
  
  def words_form_action(word)
      if word.new_record?
        @action = '/words'
      else
        @action = "/words/#{word.id}"
      end
      # @action
  end
  
  def words_form_method(word)
    if word.new_record?
      @method = "post"
    else
      @method = "put"
    end
    # @method
  end
  
  def words_form_class(word)
    # define the class name here
    @class
  end
  
  def words_form_id(word)
    if word.new_record?
      # @form_id = #add your new word id
    else
      # @form_id = #add your existing word id
    end
    # @form_id
  end
  
end
