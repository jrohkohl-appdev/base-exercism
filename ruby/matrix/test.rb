text = "1 2 3\n4 5 6\n7 8 9\n 8 7 6"
matrix = []
raw_rows = text.split(/\n/)
print(raw_rows)



raw_rows.each do |selected_row|
    matrix.append(selected_row.split(/\b[\D]\b/).map {|num| num.to_i})
    
end

print(matrix)

