//
//  LayoutExensions.swift
//  EvilExtensions
//
//  Created by Terry Kwon on 2016-02-11.
//  Copyright © 2016 Evil Wins. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
public extension UIView {
    
    public func constraintCenterXToView(view: UIView) ->  NSLayoutConstraint! {
        return constraintCenterXToView(view, offset: 0)
    }

    public func constraintCenterXToView(view: UIView, offset: CGFloat) ->  NSLayoutConstraint! {
        let constraint = centerXAnchor.constraintEqualToAnchor(view.centerXAnchor, constant: 0)
        constraint.active = true
        return constraint
    }

    public func constraintCenterYToView(view: UIView) ->  NSLayoutConstraint! {
        return constraintCenterYToView(view, offset: 0)
    }

    public func constraintCenterYToView(view: UIView, offset: CGFloat) ->  NSLayoutConstraint! {
        let constraint = centerYAnchor.constraintEqualToAnchor(view.centerYAnchor, constant: 0)
        constraint.active = true
        return constraint
    }

    public func constraintLeadingToView(view: UIView) ->  NSLayoutConstraint! {
        return constraintLeadingToView(view, offset: 0)
    }

    public func constraintLeadingToView(view: UIView, offset: CGFloat) ->  NSLayoutConstraint! {
        let constraint = leadingAnchor.constraintEqualToAnchor(view.leadingAnchor, constant: offset)
        constraint.active = true
        return constraint
    }

    public func constraintTrailingToView(view: UIView) -> NSLayoutConstraint! {
        return constraintTrailingToView(view, offset: 0)
    }

    public func constraintTrailingToView(view: UIView, offset: CGFloat) ->  NSLayoutConstraint! {
        let constraint = trailingAnchor.constraintEqualToAnchor(view.trailingAnchor, constant: -offset)
        constraint.active = true
        return constraint
    }

    public func constraintTopToView(view: UIView) ->  NSLayoutConstraint! {
        return constraintTopToView(view, offset: 0)
    }

    public func constraintTopToBottomOfView(view: UIView) ->  NSLayoutConstraint! {
        return constraintTopToBottomOfView(view, offset: 0)
    }

    public func constraintTopToBottomOfView(view: UIView, offset: CGFloat) ->  NSLayoutConstraint! {
        let constraint = topAnchor.constraintEqualToAnchor(view.bottomAnchor, constant: offset)
        constraint.active = true
        return constraint
    }

    public func constraintTopToView(view: UIView, offset: CGFloat) ->  NSLayoutConstraint! {
        let constraint = topAnchor.constraintEqualToAnchor(view.topAnchor, constant: offset)
        constraint.active = true
        return constraint
    }

    public func constraintBottomToView(view: UIView) -> NSLayoutConstraint! {
        return constraintBottomToView(view, offset: 0)
    }

    public func constraintBottomToView(view: UIView, offset: CGFloat) ->  NSLayoutConstraint! {
        let constraint = bottomAnchor.constraintEqualToAnchor(view.bottomAnchor, constant: -offset)
        constraint.active = true
        return constraint
    }

    public func constraintTopEqualToAnchor(anchor: NSLayoutAnchor!) -> NSLayoutConstraint! {
        let constraint = topAnchor.constraintEqualToAnchor(anchor)
        constraint.active = true
        return constraint
    }

    public func constraintBottomEqualToAnchor(anchor: NSLayoutAnchor!) -> NSLayoutConstraint! {
        return constraintBottomEqualToAnchor(anchor, offset: 0)
    }

    public func constraintBottomEqualToAnchor(anchor: NSLayoutAnchor!, offset: CGFloat) -> NSLayoutConstraint! {
        let constraint = bottomAnchor.constraintEqualToAnchor(anchor, constant: -offset)
        constraint.active = true
        return constraint
    }

    public func constraintHeightToView(view: UIView, offset: CGFloat) -> NSLayoutConstraint! {
        let constraint = heightAnchor.constraintEqualToAnchor(view.heightAnchor, constant: -offset)
        constraint.active = true
        return constraint
    }

    public func constraintWidthToView(view: UIView, offset: CGFloat) -> NSLayoutConstraint! {
        let constraint = widthAnchor.constraintEqualToAnchor(view.widthAnchor, constant: -offset)
        constraint.active = true
        return constraint
    }

    public func constraintWidth(constant: CGFloat) -> NSLayoutConstraint! {
        let constraint = heightAnchor.constraintEqualToConstant(constant)
        constraint.active = true
        return constraint
    }


    public func constraintHeight(constant: CGFloat) -> NSLayoutConstraint! {
        let constraint = heightAnchor.constraintEqualToConstant(constant)
        constraint.active = true
        return constraint
    }

}
