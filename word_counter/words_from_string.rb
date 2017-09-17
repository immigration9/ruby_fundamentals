def words_from_string(string)
	return string.downcase.scan(/[\w']+/)
end