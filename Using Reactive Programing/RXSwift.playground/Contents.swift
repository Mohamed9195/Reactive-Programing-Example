import UIKit
import RxSwift
import RxRelay


//MARK: - Observable Type
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

///A Subject is a special form of an Observable .
// Observable genral type for Observable pattern
// publishSubject: will give any subscriber the most recent element and everything that is emitted by that sequence after the subscription happened. tack init value and have next, error, complet, disposed
// behaviorRelay: tack init value and have next, error, disposed not complet work forever
// replaySubject: you can define how many recent items you want to emit to new subscribers.
// single: emit one value then complete have success and error function it mean run or fail


// “hot” Observable may begin emitting items as soon as it is created, and so any observer who later subscribes to that Observable may start observing the sequence somewhere in the middle. A “cold” Observable, on the other hand, waits until an observer subscribes to it before it begins to emit items, and so such an observer is guaranteed to see the whole sequence from the beginning.


var publishSubject = PublishSubject<Int>()
var behaviorSubject = BehaviorSubject(value: [1,2,3,4,5])
var replaySubject = ReplaySubject<Int>.create(bufferSize: 1)
var single = Single<Int>.just(10)

// man deferent between Subject vs Relay is the relay observable not complet
var publishRelay = PublishRelay<Int>()
var behaviorRelay = BehaviorRelay(value: [1,2,3,4,5])




//MARK: - Creating Observables Operators
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Observable.just(10)

//Observable.create { observer in
//    observer.onNext(10)
//   // observer.onError(<#Error#>)
//    observer.onCompleted()
//    return Disposables.create {
//        print("disposed")
//    }
//}

/// every run call new value
//Observable.deferred {
//    return Observable.just(10)
//}


//let db = DisposeBag()
//Observable<Int>.interval(1.0, scheduler: MainScheduler.instance)
//    .debug("interval")
//    .subscribe(onNext: {
//        print($0)
//        // do Some thing every time interval
//    })
//    .addDisposableTo(db)

//Observable.range(start: 1, count: 10)
//
//Observable.repeatElement(10, scheduler: MainScheduler.instance)
//
//Observable<Int>.timer(0.05, scheduler: MainScheduler.instance).subscribe(onNext: { (t) in
//    print(t)
//})


//MARK: - Transforming Observables Operators
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
