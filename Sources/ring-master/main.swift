

func doOperatorComputations<T: Ring>(x: T, y: T) -> T {
        let z = x * y
        let w = z - y;
        let v = -w;
        let u = v + x + y
        return u
}

print(doOperatorComputations(x: 0, y: 0))
