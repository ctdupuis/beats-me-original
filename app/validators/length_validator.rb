class LengthValidator < ActiveModel::Validator
    def validate(record)
        err_msg = "Must be in standardized time format. Example => 6:09"
        if !record.length.include?(":")
            record.errors[:length] << err_msg
        else
            mins = record.length.split(":")[0]
            secs = record.length.split(":")[1]
            split_sec - secs.split("").map{|s| s.to_i}
            unless mins.match(/[0-9]/) && split_sec[0].between?(0, 5) && split_sec[1].between?(0, 9)
                record.errors[:length] << err_msg
            end
        end
    end
end