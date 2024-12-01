fn main() {
    let l: Vec<Vec<i32>> = std::io::stdin()
        .lines()
        .filter_map(Result::ok)
        .map(|line| {
            line.split_whitespace()
                .filter_map(|num| num.parse().ok())
                .collect()
        })
        .collect();

    let l: Vec<Vec<i32>> = (0..2)
        .map(|i| l.iter().map(|row| row[i]).collect())
        .map(|mut v: Vec<i32>| {
            v.sort();
            v
        })
        .collect();

    // part 1
    let sum: i32 = l[0]
        .iter()
        .zip(l[1].iter())
        .map(|(a, b)| (a - b).abs())
        .sum();

    println!("{}", sum);

    // part 2
    let sum: i32 = l[0]
        .iter()
        .map(|&x| x * l[1].iter().filter(|&&y| y == x).count() as i32)
        .sum();

    println!("{}", sum);
}
