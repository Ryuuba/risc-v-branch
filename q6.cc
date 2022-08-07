int main()
{
    int sel = 0;
    int a;
    switch (sel)
    {
    case 0:
        a = 0xFFFFFFFF;
        break;
    case 1:
        a = 0x00010ADF;
        break;
    case 2:
        a = 0xFFFFFAAA;
        break;
    case 3:
        a = 0xF0000AAA;
        break;
    case 4:
        a = 0x0000F000;
        break;
    default:
        a = 0xF0000111;
    }
    return 0;
}