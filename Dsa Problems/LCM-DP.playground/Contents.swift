import UIKit

func lcs(_ X: [Character], _ Y: [Character], _ m: Int, _ n: Int, _ dp: inout [[Int]]) -> Int {
    if m == 0 || n == 0 {
        return 0
    }
    
    if X[m - 1] == Y[n - 1] {
        if dp[m][n] != -1 {
            return dp[m][n]
        }
        return 1 + lcs(X, Y, m - 1, n - 1, &dp)
    }
    
    if dp[m][n] != -1 {
        return dp[m][n]
    }
    
    dp[m][n] = max(lcs(X, Y, m, n - 1, &dp), lcs(X, Y, m - 1, n, &dp))
    return dp[m][n]
}

// Driver code
let X: [Character] = Array("AGGTAB")
let Y: [Character] = Array("GXTXAYB")
let m = X.count
let n = Y.count
var dp = Array(repeating: Array(repeating: -1, count: n + 1), count: m + 1)

print("Length of LCS is", lcs(X, Y, m, n, &dp))

