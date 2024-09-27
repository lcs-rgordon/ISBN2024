//
//  ISBN2024Tests.swift
//  ISBN2024Tests
//
//  Created by Russell Gordon on 2024-09-27.
//

import Testing

struct ISBN2024Tests {

    @Test func isAnISBNNumber() {
        
        let result = report(digit11: 9, digit12: 4, digit13: 8)
        
        #expect(result == """
                The 1-3 sum is 120
                The ISBN number 9780921418948 is a valid ISBN number.
                """)
        
    }
    
    @Test func isNotAnISBNNumber() {
        
        let result = report(digit11: 0, digit12: 5, digit13: 2)
        
        #expect(result == """
                The 1-3 sum is 108
                The ISBN number 9780921418052 is NOT a valid ISBN number.
                """)
        
    }

}
