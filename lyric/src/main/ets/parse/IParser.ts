import { Lyric } from '../bean/Lyric';

export interface IParser {

    parse(source: any): Array<Lyric>

}