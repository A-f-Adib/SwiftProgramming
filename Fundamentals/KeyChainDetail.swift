/*
Keychain uses key-value pairs, where you store a String (password, token, etc.) 
under an account identifier (e.g., "user_email").

iOS provides the Security framework, which includes:

SecItemAdd → Save data
SecItemCopyMatching → Retrieve data
SecItemUpdate → Update existing data
SecItemDelete → Remove data
*/

import Security
import Foundation

func saveToKeychain(account: String, password: String) {
    let passwordData = password.data(using: .utf8)!
    
    
}
