class RuntimeValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
        err_msg = "must be in standardized time format. Example => 6:09"
        if value.nil? || !value.include?(":")
            record.errors[attribute] << err_msg
        else
            mins = value.split(":")[0].to_i
            secs = value.split(":")[1]
            split_sec = secs.split("").map{|s| s.to_i}
            unless mins.between?(0, 20) && split_sec[0].between?(0, 5) && split_sec[1].between?(0, 9)
                record.errors[attribute] << err_msg
            end
        end
    end
end