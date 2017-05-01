#Release 2:
#I'm going to create a nested data structure which will represent a
# 3 x 3 matrix in linear algebra.


c1 = [11, 12, 13]
c2 = [21, 22, 23]
c3 = [31, 32, 33]
rm = [c1, c2, c3]
overall_matrix = [rm]
p overall_matrix

#I am now going to attemt to code the solution for the determinant of
# the matrix. To cross reference the equation I am attempting to duplicate:
# https://www.mathworks.com/help/aeroblks/determinantof3x3matrix.html?requestedDomain=www.mathworks.com

def det()
  c1 = [11, 12, 13]
  c2 = [21, 22, 23]
  c3 = [31, 32, 33]
  overall_matrix = [c1, c2, c3]
  determinant_1 = c1[0] * ( (c2[1]*c3[2]) - (c2[2]*c3[1]) ) - c1[1] * (
  (c2[0]*c3[2]) - (c2[2]*c3[0] )) + c1[2] * ( (c2[0]*c3[1]) - (c2[1]*c3[0] ))

  determinant_2 = overall_matrix[0][0] * ( (c2[1]*c3[2]) - (c2[2]*c3[1]) ) -
                  overall_matrix[0][1] * ( (c2[0]*c3[2]) - (c2[2]*c3[0] )) +
                  overall_matrix[0][2] * ( (c2[0]*c3[1]) - (c2[1]*c3[0] ))

  p determinant_1
  p determinant_2
end

det()
#Result is 0. If an online calulator is used, or you do it by hand,
# you get the same result.
