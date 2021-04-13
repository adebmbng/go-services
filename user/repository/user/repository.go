package user

type repository struct {
}

type Repository interface {
}

func NewRepository() Repository {
	return &repository{}
}
