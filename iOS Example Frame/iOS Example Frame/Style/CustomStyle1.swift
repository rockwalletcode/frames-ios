//
//  CustomStyle1.swift
//  iOS Example Frame
//
//  Created by Deepesh.Vasthimal on 03/06/2022.
//  Copyright © 2022 Checkout. All rights reserved.
//

import UIKit
import Frames

// MARK: - Color Constants -

private enum Constants {
    static let mainFontColor = UIColor(red: 0 / 255, green: 204 / 255, blue: 45 / 255, alpha: 1)
    static let secondaryFontColor = UIColor(red: 177 / 255, green: 177 / 255, blue: 177 / 255, alpha: 1)
    static let errorColor = UIColor.red
    static let backgroundColor = UIColor(red: 23 / 255, green: 32 / 255, blue: 30 / 255, alpha: 1)
    static let textFieldBackgroundColor = UIColor(red: 36 / 255.0, green: 48 / 255.0, blue: 45 / 255.0, alpha: 1.0)
    static let borderRadius: CGFloat = 4
    static let borderWidth: CGFloat = 1
}

// **********************
// MARK: - Payment Form
// **********************

struct PayButtonFormStyleCustom1: ElementButtonStyle {
  var image: UIImage?
  var textAlignment: NSTextAlignment = .center
  var text: String = "Pay 100$"
  var font: UIFont = UIFont.systemFont(ofSize: 15)
  var disabledTextColor: UIColor = Constants.secondaryFontColor
  var disabledTintColor: UIColor = Constants.mainFontColor.withAlphaComponent(0.2)
  var activeTintColor: UIColor = Constants.mainFontColor
  var backgroundColor: UIColor = Constants.mainFontColor
  var textColor: UIColor = .white
  var normalBorderColor: UIColor = .clear
  var focusBorderColor: UIColor = .clear
  var errorBorderColor: UIColor = .clear
  var imageTintColor: UIColor = .clear
  var isHidden = false
  var isEnabled = true
  var height: Double = 56
  var width: Double = 0
  var cornerRadius: CGFloat = 10
  var borderWidth: CGFloat = 0
  var textLeading: CGFloat = 0
}

// MARK: - Main Payment Form

struct PaymentFormStyleCustom1: PaymentFormStyle {
  var backgroundColor: UIColor = Constants.backgroundColor
  var headerView: PaymentHeaderCellStyle = StyleOrganiser.PaymentHeaderViewStyle()
  var addBillingSummary: CellButtonStyle? = StyleOrganiser.BillingStartButton()
  var editBillingSummary: BillingSummaryViewStyle? = StyleOrganiser.BillingSummaryStyle()
  var cardholderInput: CellTextFieldStyle?
  var cardNumber: CellTextFieldStyle? = StyleOrganiser.CardNumberSection()
  var expiryDate: CellTextFieldStyle? = StyleOrganiser.ExpiryDateSection()
  var securityCode: CellTextFieldStyle? = StyleOrganiser.SecurityNumberSection()
  var payButton: ElementButtonStyle =  PayButtonFormStyleCustom1()
}

struct BillingFormStyleCustom1: BillingFormStyle {
  var mainBackground: UIColor = Constants.backgroundColor
  var header: BillingFormHeaderCellStyle = StyleOrganiser.BillingHeaderViewStyle()
  var cells: [BillingFormCell] = [
    .fullName(StyleOrganiser.BillingFullNameInput()),
    .addressLine1(StyleOrganiser.BillingAddressLine1Input()),
    .addressLine2(StyleOrganiser.BillingAddressLine2Input()),
    .city(StyleOrganiser.BillingCityInput()),
    .state(StyleOrganiser.BillingStateInput()),
    .postcode(StyleOrganiser.BillingPostcodeInput()),
    .country(StyleOrganiser.BillingCountryInput()),
    .phoneNumber(StyleOrganiser.BillingPhoneInput())
  ]
}

private struct StyleOrganiser {

    struct PaymentHeaderViewStyle: PaymentHeaderCellStyle {
        var shouldHideAcceptedCardsList: Bool = true
        var backgroundColor: UIColor = Constants.backgroundColor
        var headerLabel: ElementStyle? = PaymentHeaderLabel()
        var subtitleLabel: ElementStyle? = PaymentHeaderSubtitle()
        var schemeIcons: [UIImage?] = []
    }

    struct BillingHeaderViewStyle: BillingFormHeaderCellStyle {
        var backgroundColor: UIColor = .clear
        var headerLabel: ElementStyle = BillingHeaderLabel()
        var cancelButton: ElementButtonStyle = CancelButtonStyle()
        var doneButton: ElementButtonStyle = DoneButtonStyle()
    }

  struct BillingHeaderLabel: ElementStyle {
        var textAlignment: NSTextAlignment = .natural
        var isHidden: Bool = false
        var text: String = "Billing address"
        var font: UIFont = UIFont(sfMono: .semibold, size: 24)
        var backgroundColor: UIColor = .clear
        var textColor: UIColor = Constants.mainFontColor
    }

    struct CancelButtonStyle: ElementButtonStyle {
        var textAlignment: NSTextAlignment = .natural
        var isEnabled: Bool = true
        var disabledTextColor: UIColor = Constants.secondaryFontColor
        var disabledTintColor: UIColor = .clear
        var activeTintColor: UIColor = .clear
        var imageTintColor: UIColor = .clear
        var normalBorderColor: UIColor = .clear
        var focusBorderColor: UIColor = .clear
        var errorBorderColor: UIColor = .clear
        var image: UIImage?
        var textLeading: CGFloat = 0
        var cornerRadius: CGFloat = Constants.borderRadius
        var borderWidth: CGFloat = Constants.borderWidth
        var height: Double = 60
        var width: Double = 70
        var isHidden: Bool = false
        var text: String = "Cancel"
        var font: UIFont = UIFont(sfMono: .semibold, size: 17)
        var backgroundColor: UIColor = .clear
        var textColor: UIColor = Constants.mainFontColor
    }

    struct DoneButtonStyle: ElementButtonStyle {
        var textAlignment: NSTextAlignment = .natural
        var isEnabled: Bool = true
        var disabledTextColor: UIColor = Constants.secondaryFontColor
        var disabledTintColor: UIColor = .clear
        var activeTintColor: UIColor = .clear
        var imageTintColor: UIColor = .clear
        var normalBorderColor: UIColor = .clear
        var focusBorderColor: UIColor = .clear
        var errorBorderColor: UIColor = .clear
        var image: UIImage?
        var textLeading: CGFloat = 0
        var cornerRadius: CGFloat = Constants.borderRadius
        var borderWidth: CGFloat = Constants.borderWidth
        var height: Double = 60
        var width: Double = 70
        var isHidden: Bool = false
        var text: String = "Done"
        var font: UIFont = UIFont(sfMono: .semibold, size: 17)
        var backgroundColor: UIColor = .clear
        var textColor: UIColor = Constants.mainFontColor
    }

    struct PaymentHeaderLabel: ElementStyle {
        var textAlignment: NSTextAlignment = .natural
        var isHidden: Bool = false
        var text: String = "Payment details"
        var font: UIFont = UIFont(size: 24)
        var backgroundColor: UIColor = .clear
        var textColor: UIColor = Constants.mainFontColor
    }

    struct PaymentHeaderSubtitle: ElementStyle {
        var textAlignment: NSTextAlignment = .natural
        var isHidden: Bool = false
        var text: String = "Visa, Mastercard and American Express accepted."
        var font: UIFont = UIFont(size: 12)
        var backgroundColor: UIColor = .clear
        var textColor: UIColor = Constants.mainFontColor
    }

    struct CardNumberSection: CellTextFieldStyle {
        var isMandatory: Bool = true
        var backgroundColor: UIColor = .clear
        var textfield: ElementTextFieldStyle = TextFieldStyle()
        var title: ElementStyle? = TitleStyle(text: "Card number")
        var mandatory: ElementStyle? = MandatoryStyle(text: "")
        var hint: ElementStyle?
        var error: ElementErrorViewStyle? = ErrorViewStyle(text: "Insert a valid card number")
    }

    struct ExpiryDateSection: CellTextFieldStyle {
        var textfield: ElementTextFieldStyle = TextFieldStyle(placeholder: "_ _ / _ _")
        var isMandatory: Bool = true
        var backgroundColor: UIColor = .clear
        var title: ElementStyle? = TitleStyle(text: "Expiry date")
        var mandatory: ElementStyle? = MandatoryStyle(text: "")
        var hint: ElementStyle?
        var error: ElementErrorViewStyle? = ErrorViewStyle(text: "Insert a valid expiry date")
    }

    struct SecurityNumberSection: CellTextFieldStyle {
        var textfield: ElementTextFieldStyle = TextFieldStyle()
        var isMandatory: Bool = true
        var backgroundColor: UIColor = .clear
        var title: ElementStyle? = TitleStyle(text: "Security code")
        var mandatory: ElementStyle? = MandatoryStyle(text: "")
        var hint: ElementStyle?
        var error: ElementErrorViewStyle? = ErrorViewStyle(text: "Insert a valid security code")
    }

    struct TextFieldStyle: ElementTextFieldStyle {
        var textAlignment: NSTextAlignment = .natural
        var text: String = ""
        var isSupportingNumericKeyboard: Bool = true
        var height: Double = 30
        var cornerRadius: CGFloat = Constants.borderRadius
        var borderWidth: CGFloat = Constants.borderWidth
        var placeholder: String?
        var tintColor: UIColor = Constants.mainFontColor
        var normalBorderColor: UIColor = .clear
        var focusBorderColor: UIColor = .clear
        var errorBorderColor: UIColor = Constants.errorColor
        var isHidden: Bool = false
        var font: UIFont = UIFont(size: 15)
        var backgroundColor: UIColor = Constants.textFieldBackgroundColor
        var textColor: UIColor = Constants.mainFontColor
    }

    struct TitleStyle: ElementStyle {
        var textAlignment: NSTextAlignment = .natural
        var text: String
        var isHidden: Bool = false
        var font: UIFont = UIFont(size: 15)
        var backgroundColor: UIColor = .clear
        var textColor: UIColor = Constants.mainFontColor
    }

    struct MandatoryStyle: ElementStyle {
        var textAlignment: NSTextAlignment = .natural
        var text: String
        var isHidden: Bool = false
        var font: UIFont = UIFont(size: 13)
        var backgroundColor: UIColor = .clear
        var textColor: UIColor = Constants.secondaryFontColor
    }

    struct SubtitleElementStyle: ElementStyle {
        var textAlignment: NSTextAlignment = .natural
        var text: String
        var textColor: UIColor = Constants.secondaryFontColor
        var backgroundColor: UIColor = .clear
        var tintColor: UIColor = Constants.mainFontColor
        var image: UIImage?
        var height: Double = 30
        var isHidden: Bool = false
        var font: UIFont = UIFont(size: 13)
    }

    struct ErrorViewStyle: ElementErrorViewStyle {
        var textAlignment: NSTextAlignment = .natural
        var text: String
        var textColor: UIColor = Constants.errorColor
        var backgroundColor: UIColor = .clear
        var tintColor: UIColor = Constants.errorColor
        var image: UIImage?
        var height: Double = 30
        var isHidden: Bool = true
        var font: UIFont = UIFont(size: 13)
    }

    // MARK: Billing
    struct BillingStartButton: CellButtonStyle {
        var isMandatory: Bool = true
        var button: ElementButtonStyle = AddBillingDetailsButtonStyle()
        var backgroundColor: UIColor = .red// .clear
        var title: ElementStyle? = TitleStyle(text: "Billing address")
        var mandatory: ElementStyle?
        var hint: ElementStyle? = {
            var element = SubtitleElementStyle(text: "We need this information as an additional security measure to verify this card.")
            element.textColor = Constants.mainFontColor
            return element
        }()
        var error: ElementErrorViewStyle?
    }

    struct BillingSummaryStyle: BillingSummaryViewStyle {
        var summary: ElementStyle? = BillingSummaryElementStyle(text: "")
        var cornerRadius: CGFloat = Constants.borderRadius
        var borderWidth: CGFloat = Constants.borderWidth
        var separatorLineColor: UIColor = Constants.secondaryFontColor
        var borderColor: UIColor = Constants.mainFontColor
        var button: ElementButtonStyle = AddBillingDetailsButtonStyle(textLeading: 20, text: "\u{276F} Update Billing Address")
        var isMandatory: Bool = true
        var backgroundColor: UIColor = .clear
        var title: ElementStyle? = TitleStyle(text: "Billing address")
        var mandatory: ElementStyle?
        var hint: ElementStyle? = {
            var element = SubtitleElementStyle(text: "We need this information as an additional security measure to verify this card.")
            element.textColor = Constants.mainFontColor
            return element
        }()
        var error: ElementErrorViewStyle?
    }

    struct AddBillingDetailsButtonStyle: ElementButtonStyle {
        var textAlignment: NSTextAlignment = .natural
        var isEnabled: Bool = true
        var disabledTextColor: UIColor = Constants.secondaryFontColor
        var disabledTintColor: UIColor = Constants.secondaryFontColor
        var activeTintColor: UIColor = Constants.mainFontColor
        var imageTintColor: UIColor = .clear
        var normalBorderColor: UIColor = .clear
        var focusBorderColor: UIColor = .clear
        var errorBorderColor: UIColor = .clear
        var image: UIImage?
        var textLeading: CGFloat = 0
        var cornerRadius: CGFloat = 0
        var borderWidth: CGFloat = 0
        var height: Double = 30
        var width: Double = 300
        var isHidden: Bool = false
        var text: String = "\u{276F} Add billing address"
        var font: UIFont = UIFont(sfMono: .semibold, size: 15)
        var backgroundColor: UIColor = .clear
        var textColor: UIColor = Constants.mainFontColor
    }

    struct BillingFullNameInput: CellTextFieldStyle {
        var textfield: ElementTextFieldStyle = TextFieldStyle(isSupportingNumericKeyboard: false)
        var isMandatory: Bool = true
        var backgroundColor: UIColor = .clear
        var title: ElementStyle? = TitleStyle(text: "Full name")
        var mandatory: ElementStyle?
        var hint: ElementStyle?
        var error: ElementErrorViewStyle?
    }

    struct BillingAddressLine1Input: CellTextFieldStyle {
        var textfield: ElementTextFieldStyle = TextFieldStyle(isSupportingNumericKeyboard: false)
        var isMandatory: Bool = true
        var backgroundColor: UIColor = .clear
        var title: ElementStyle? = TitleStyle(text: "Address line 1")
        var mandatory: ElementStyle?
        var hint: ElementStyle?
        var error: ElementErrorViewStyle?
    }

    struct BillingAddressLine2Input: CellTextFieldStyle {
        var textfield: ElementTextFieldStyle = TextFieldStyle(isSupportingNumericKeyboard: false)
        var isMandatory: Bool = false
        var backgroundColor: UIColor = .clear
        var title: ElementStyle? = TitleStyle(text: "Address line 2")
        var mandatory: ElementStyle? = MandatoryStyle(text: "Optional")
        var hint: ElementStyle?
        var error: ElementErrorViewStyle?
    }

    struct BillingCityInput: CellTextFieldStyle {
        var textfield: ElementTextFieldStyle = TextFieldStyle(isSupportingNumericKeyboard: false)
        var isMandatory: Bool = true
        var backgroundColor: UIColor = .clear
        var title: ElementStyle? = TitleStyle(text: "City")
        var mandatory: ElementStyle?
        var hint: ElementStyle?
        var error: ElementErrorViewStyle?
    }

    struct BillingStateInput: CellTextFieldStyle {
        var textfield: ElementTextFieldStyle = TextFieldStyle(isSupportingNumericKeyboard: false)
        var isMandatory: Bool = true
        var backgroundColor: UIColor = .clear
        var title: ElementStyle? = TitleStyle(text: "State")
        var mandatory: ElementStyle?
        var hint: ElementStyle?
        var error: ElementErrorViewStyle?
    }

    struct BillingPostcodeInput: CellTextFieldStyle {
        var textfield: ElementTextFieldStyle = TextFieldStyle(isSupportingNumericKeyboard: false)
        var isMandatory: Bool = true
        var backgroundColor: UIColor = .clear
        var title: ElementStyle? = TitleStyle(text: "Postcode/Zip")
        var mandatory: ElementStyle?
        var hint: ElementStyle?
        var error: ElementErrorViewStyle?
    }

    struct BillingCountryInput: CellButtonStyle {
        var button: ElementButtonStyle = BillingCountryButton()
        var isMandatory: Bool = true
        var backgroundColor: UIColor = .clear
        var title: ElementStyle? = TitleStyle(text: "Country")
        var mandatory: ElementStyle?
        var hint: ElementStyle?
        var error: ElementErrorViewStyle?
    }

    struct BillingPhoneInput: CellTextFieldStyle {
        var textfield: ElementTextFieldStyle = TextFieldStyle()
        var isMandatory: Bool = true
        var backgroundColor: UIColor = .clear
        var title: ElementStyle? = TitleStyle(text: "Phone number")
        var mandatory: ElementStyle?
        var hint: ElementStyle? = SubtitleElementStyle(text: "We will only use this to confirm identity if necessary")
        var error: ElementErrorViewStyle?
    }

    struct BillingSummaryElementStyle: ElementStyle {
        var textAlignment: NSTextAlignment = .natural
        var isHidden: Bool = false
        var text: String
        var font: UIFont = UIFont(size: 14)
        var backgroundColor: UIColor = .clear
        var textColor: UIColor = Constants.secondaryFontColor
    }

    struct BillingCountryButton: ElementButtonStyle {
        var textAlignment: NSTextAlignment = .natural
        var isEnabled: Bool = true
        var disabledTextColor: UIColor = Constants.secondaryFontColor
        var disabledTintColor: UIColor = .clear
        var activeTintColor: UIColor = Constants.mainFontColor
        var imageTintColor: UIColor = Constants.mainFontColor
        var normalBorderColor: UIColor = .clear
        var focusBorderColor: UIColor = .clear
        var errorBorderColor: UIColor = .clear
        var image: UIImage? = UIImage(named: "arrow_green_down")
        var textLeading: CGFloat = 20
        var cornerRadius: CGFloat = Constants.borderRadius
        var borderWidth: CGFloat = 0
        var height: Double = 20
        var width: Double = 80
        var isHidden: Bool = false
        var text: String = "Please select a country"
        var font: UIFont = UIFont(size: 15)
        var backgroundColor: UIColor = Constants.textFieldBackgroundColor
        var textColor: UIColor = Constants.secondaryFontColor
    }
}