#include <iostream>
#include <vector>
#include <algorithm>


struct Point {
    int x;
    int y;

    explicit Point(int x = 0, int y = 0) : x(x), y(y) {
    }
};

std::istream& operator>> (std::istream &in, Point &point) {
    in >> point.x >> point.y;
    return in;
}


class Contour {
public:
    explicit Contour(std::vector<Point> points) : boundary(std::move(points)) {
    }

    bool is_inside(const Point &p) const {
        int intersections_num = amount_of_intersections(p);
        return intersections_num % 2 != 0; // true, если нечетно; false, если четно
    }

    ~Contour() = default;

private:
    std::vector<Point> boundary;

    int amount_of_intersections(const Point &p) const {
        //считаем, что точки на границе тоже "внутри" контура (легко исправить)
        int n = boundary.size();
        int intersections_num = 0;

        int j = n - 1;
        for (int i = 0; i < n; j = i++) {
            Point left = (boundary[i].x > boundary[j].x) ? boundary[j] : boundary[i];
            Point right = (boundary[i].x > boundary[j].x) ? boundary[i] : boundary[j];

            if (left.y == right.y && left.y == p.y) { // если отрезок находится на одной прямой с лучом, то считаем, что они не пересекаются
                continue;
            }

            double k = (p.y - left.y) * (right.x - left.x) - (p.x - left.x) * (right.y - left.y);
            // коэффицент, показывающий, по какую сторону от прямой (проведенной через концы отрезка) лежит точка

            if (p.y < left.y && p.y >= right.y) {
                if (k == 0) return 1; // k = 0 значит, что точка лежит на границе => возвращаем любое нечетное число
                if (k > 0) {
                    ++intersections_num;
                }
            } else if (p.y >= left.y && p.y < right.y) {
                if (k == 0) return 1;
                if (k < 0) {
                    ++intersections_num;
                }
            }
        }

        return intersections_num;
    }
};


int main() {
    // алгоритм: проводим луч из точки параллельно оси ox против направления оси (можно в любую сторону, так просто удобнее)
    // если этот луч пересек контур четное количество раз, то точка лежит вне контура; нечетное - внутри

    int n, m;
    int amount_of_points_inside = 0;
    std::cin >> n >> m;

    std::vector<Point> boundary;
    for (int i = 0; i < n; ++i) {
        Point cur_point, next_point;
        std::cin >> cur_point >> next_point;

        boundary.push_back(cur_point);
    }

    Contour contour(boundary);

    for (int i = 0; i < m; ++i) {
        Point point;
        std::cin >> point;

        if (contour.is_inside(point)) {
            ++amount_of_points_inside;
        }
    }

    std::cout << amount_of_points_inside << std::endl;

    return 0;
}