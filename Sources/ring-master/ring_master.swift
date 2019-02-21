
typealias Matrix<T> = [[T]]

func smithNormalForm<R: EuclideanDomain>(inputMatrix: Matrix<R>) -> Matrix<R> {
    
    // 1. Pick matrix entry w/ smallest deg(), a_ij
    
    // 2. Use it to clean out the row and column
    //     but IF in the cleaning process the result has lower degree
    //     than a_ij, abort and use that one instead. This must terminate,
    //     because positive integers can only be so small.
    
    // 3. Now, we have a * in the position of a_ij and zeros. Once we have this,
    //     swap the rows and colums so that a_ij is at the left corner. Now, a_ij
    //     is called a_11
    
    // 4. If a_11 divides every other element in the matrix (i.e. every element
    //     not in it's row or column, then recurse to the matrix starting at
    //     row 2 and column 2.
    //
    //    IF NOT, then we have b_ij which a_11 does not divide.
    //    We need to "perform column operations":
    //       a) copy a_11 into the a_1j entry.
    //       b) clean out the b_ij entry with a_1j, getting something with
    //             lower deg() than a_1j
    //       c) return to step 2, with a_ij set as the new, cleaned out b_ij
    
    //   What does it mean to "clean out" something? This means taking the
    //      gcd with respect to the euclidean function.
    
    return Matrix<R>()
}
