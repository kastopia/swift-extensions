//
//  Macro.swift
//  swift-extensions
//
//  Created by Terry Kwon on 2016-01-08.
//  Copyright © 2016 Evil Wins. All rights reserved.
//

import Foundation

public enum ThreadProperty {
    case Background
    case Default
    case High
    case Low
    case Main
}

public func runSyncOnMainThread(block: dispatch_block_t) {
    if NSThread.currentThread() == NSThread.mainThread() {
        block()
    }
    else {
        runSyncOnThread(.Main, block: block)
    }
}

public func runAsyncOnMainThread(block: dispatch_block_t) {
    runAsyncOnThread(.Main, block: block)
}

public func runAsyncOnBackgroundThread(block: dispatch_block_t) {
    runAsyncOnThread(.Background, block: block)
}

public func runAsyncOnThread(threadProperty: ThreadProperty, block: dispatch_block_t) {
    runAsyncOnQueue(queueForProperty(threadProperty), block: block)
}

public func runSyncOnThread(threadProperty: ThreadProperty, block: dispatch_block_t) {
    runSyncOnQueue(queueForProperty(threadProperty), block: block)
}

private func queueForProperty(property: ThreadProperty) -> dispatch_queue_t! {
    var queue: dispatch_queue_t!
    
    switch property {
    case .Background:
        queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0)
    case .Default:
        queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)
    case .High:
        queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0)
    case .Low:
        queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0)
    case .Main:
        queue = dispatch_get_main_queue()
    }
    
    return queue
}

private func runAsyncOnQueue(queue: dispatch_queue_t, block: dispatch_block_t) {
    dispatch_async(queue, block)
}

private func runSyncOnQueue(queue: dispatch_queue_t, block: dispatch_block_t) {
    dispatch_sync(queue, block)
}

