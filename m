Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 854251126F3
	for <lists+linux-um@lfdr.de>; Wed,  4 Dec 2019 10:20:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e3vQ03geg0GnLJ6PRx44g4pUEVymu8q+ZCU2eK5mRAQ=; b=VfTuhMQNSe78+dQSKMg0tSJs9
	jymQvHTuwZF2ZWJqXD8ZCGZm4hTKOzfMWZluybtn0WEVKK9QQOmKYyuaf83bKDIDcb5MAAhRkxMoQ
	U8oJRGOa7dvyUaPXc5/hXDOBPy8cfPVLXeScAAb7KFqMbOXcY738JwWWRXbHtczKo15E5MrR8oUA7
	HbXMmzvQB7hmxjzkkW9A19Z3s3Dya8YIregGa9OBg+sFj3Kqom9WxU79mC6MfF9aJOdYUGaEEhHKV
	ZstmSL3rFXgysULow7L9HKj7A2I5lLponiB05RqA4iDiTn5FR0qIo6NcafTC0qJ//OGvF6aKvmrqi
	XOooFOYMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icQpH-0003ZI-76; Wed, 04 Dec 2019 09:20:03 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icQpE-0003X8-0V
 for linux-um@lists.infradead.org; Wed, 04 Dec 2019 09:20:01 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1icQpC-0003hA-Je; Wed, 04 Dec 2019 09:19:58 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1icQpA-0002UK-C5; Wed, 04 Dec 2019 09:19:58 +0000
Subject: Re: I get 5.4 fail to start
To: Richard Weinberger <richard@nod.at>
References: <973c61bb-d1c4-a3ef-fec4-d492fa513d15@cambridgegreys.com>
 <CAFLxGvyKsT_Yjs9KRndqadYHQeFWpN9yzyCX8BLX6Zzigsg1vw@mail.gmail.com>
 <4d50a04d-9bef-9c12-3763-50ad80580b9e@cambridgegreys.com>
 <6c270dbe-a6c3-e2db-01d2-7d2239d6c0ee@cambridgegreys.com>
 <1054145.106334.1575450216775.JavaMail.zimbra@nod.at>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <aaaa5a05-efd3-4f6c-7728-86c8b0f08a7d@cambridgegreys.com>
Date: Wed, 4 Dec 2019 09:19:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1054145.106334.1575450216775.JavaMail.zimbra@nod.at>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_012000_052646_D6C86BED 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.5 PDS_BTC_ID             FP reduced Bitcoin ID
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
 2.5 BITCOIN_SPAM_02        BitCoin spam pattern 02
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: linux-um <linux-um@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

CgpPbiAwNC8xMi8yMDE5IDA5OjAzLCBSaWNoYXJkIFdlaW5iZXJnZXIgd3JvdGU6Cj4gLS0tLS0g
VXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+PiBWb246ICJhbnRvbiBpdmFub3YiIDxhbnRvbi5p
dmFub3ZAY2FtYnJpZGdlZ3JleXMuY29tPgo+Pj4gW3NuaXBdCj4+Cj4+IElmIEkgY29tbWVudCBv
dXQgdGhlIGNoZWNrcyBvciBtYWtlIHRoZW0gdG8gZXhwZWN0IDYgaXQgcnVucyBmaW5lIGFmdGVy
Cj4+IHRoYXQuCj4+Cj4+IE5vIGlkZWEgd2hhdCdzIGdvaW5nIG9uIC0gSSBkbyBub3Qgc2VlIHdo
ZXJlIHRoZSA2IGNhbiBjb21lIGZyb20uCj4gCj4gSSBzdXNwZWN0IGEgY2hhbmdlL3JlZ3Jlc3Np
b24gb24gdGhlIGhvc3Qgc2lkZSwgbm90IHRoZSBVTUwgc2lkZS4KPiBNYXliZSBzb21lIExTTSBt
b2R1bGUgd2hpY2ggbWFrZXMgcHRyYWNlKCkgImJldHRlciI/CgpUaGlzIGlzIHBvc3NpYmxlLiBJ
IHdpbGwgcnVuIGhvc3QgcmVncmVzc2lvbiBhcyB3ZWxsIHRvIHNlZSBpZiBpdCBpcyBhbnkgCmRp
ZmZlcmVudC4KCkkgc3RpbGwgZG8gbm90IGhhdmUgYW55IGlkZWFzIG9uIHdoeSBkbyBJIGdldCBV
TUwgd2l0aCB1cCB0byA1LjMgZ3Vlc3QgCndvcmtpbmcgYW5kIGJyZWFraW5nIGluIDUuNCBhbmQg
NS41LXJjLi4uCgpUaGUgY2hhbmdlIGluIHRoYXQgY2FzZSBpcyBndWVzdCBvbmx5IC0gdGhleSBh
cmUgYWxsIGJlaW5nIHJ1biBvbiB0aGUgCnNhbWUgNS4zIGhvc3QgKGFuZCBvY2Nhc2lvbmFsbHkg
b24gYSA0LjE5KS4KCkkgYW0gZ29pbmcgdGhyb3VnaCB0aGUga2J1aWxkIGFuZCBtYWtlZmlsZSBj
aGFuZ2VzIGJldHdlZW4gNS4zIGFuZCA1LjQgCmF0IHRoZSBtb21lbnQgdG8gdHJ5IHRvIGZpZ3Vy
ZSBpdCBvdXQuCgoKPiAKPiBUaGFua3MsCj4gLy9yaWNoYXJkCj4gCgoKCi0tIApBbnRvbiBSLiBJ
dmFub3YKQ2FtYnJpZGdlZ3JleXMgTGltaXRlZC4gUmVnaXN0ZXJlZCBpbiBFbmdsYW5kLiBDb21w
YW55IE51bWJlciAxMDI3MzY2MQpodHRwczovL3d3dy5jYW1icmlkZ2VncmV5cy5jb20vCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC11bSBtYWls
aW5nIGxpc3QKbGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCg==
