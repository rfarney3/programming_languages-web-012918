# {
#   :ruby => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :javascript => {
#     :type => "interpreted",
#     :style => [:oo, :functional]
#   },
#   :python => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :java => {
#     :type => "compiled",
#     :style => [:oo]
#   },
#   :clojure => {
#     :type => "compiled",
#     :style => [:functional]
#   },
#   :erlang => {
#     :type => "compiled",
#     :style => [:functional]
#   },
#   :scala => {
#     :type => "compiled",
#     :style => [:functional]
#   }
# }

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
  }
}
require 'pry'
def reformat_languages(languages)
  new_hash = {}

  languages.each do |func, language_hash|
  	language_hash.each do |key, type|
  		# binding.pry
  		if new_hash[key] == nil
  			new_hash[key] = type
  		end

  		if language_hash.include?(key) && new_hash[key][:style] == nil
  			new_hash[key][:style] = [func]
  		else 
  			new_hash[key][:style] += [func]
  		end
  	end
  end
  new_hash
end

puts reformat_languages(languages)
