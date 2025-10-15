$\frac{a + b}{a - b}$
$$\sqrt{a + b}$$
$$\pi$$
$$\sigma$$
show name,dob,fee from student table
$$\pi_{name,dob,fee}(student) $$

show details of students from student table
$$\pi_{*}(\sigma_{age>18}(student))$$

show id,age,fee of students whose fee greater than 55000
$$\pi_{id,age,fee}(\sigma_{fee>=55000}(student))$$

show names of students who not paying fee not more than 40000 and age greater than 16
$$\pi_{names}(\sigma_{fee<=40000\land age>16}(student))$$


order by 
$$\tau_{name}(\pi_{names}(\sigma_{fee<=40000\land age>16}(student)))$$
